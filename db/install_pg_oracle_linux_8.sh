#!/usr/bin/env bash
# https://citizix.com/how-to-install-and-configure-postgres-14-on-centos-8

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/common_functions.sh

PASSWORD_POSTGRES='TODO'

run_cmd "dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm"
run_cmd "dnf -qy module disable postgresql"
run_cmd "dnf install -y postgresql14-server"
run_cmd "/usr/pgsql-14/bin/postgresql-14-setup initdb"
run_cmd "systemctl start postgresql-14"
run_cmd "systemctl enable postgresql-14"
run_cmd "systemctl status postgresql-14"

run_cmd "rpm -i https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-redhat-repo-2-1.noarch.rpm"
run_cmd "dnf install pgadmin4 -y"

echo -e "${PASSWORD_POSTGRES}\n${PASSWORD_POSTGRES}\n" | passwd postgres --stdin
su - postgres -c "psql -c \"ALTER USER postgres PASSWORD '${PASSWORD_POSTGRES}';\""
cp ${SCRIPT_DIR}/ddl.sql /tmp/ddl.sql
su - postgres -c "psql -f /tmp/ddl.sql"
rm /tmp/ddl.sql
