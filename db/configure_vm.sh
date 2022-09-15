#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/common_functions.sh

DEV_USER='TODO'
IDEA_HOME=/home/${DEV_USER}/'TODO-idea-IC-221.5921.22'
INTELLIJ_DESKTOP_PATH=/usr/share/applications/intellij.desktop

run_cmd "dnf install perl make bzip2 gzip unzip kernel-uek-devel-$(uname -r) tar git vim java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 -y"
run_cmd "usermod --append --groups vboxsf ${DEV_USER}"

export INTELLIJ_DESKTOP_TXT="[Desktop Entry]
Version=221
Type=Application
Terminal=false
Icon[en_US]=${IDEA_HOME}/bin/idea.png
Name[en_US]=IntelliJIdea
Exec=${IDEA_HOME}/bin/idea.sh
Name=IntelliJ
Icon=${IDEA_HOME}/bin/idea.png"
run_cmd "echo \"\${INTELLIJ_DESKTOP_TXT}\" > ${INTELLIJ_DESKTOP_PATH}"
run_cmd "chmod 644 ${INTELLIJ_DESKTOP_PATH}"
run_cmd "chown root:root ${INTELLIJ_DESKTOP_PATH}"

