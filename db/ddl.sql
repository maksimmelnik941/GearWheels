
CREATE TABLE public.steel_grade (
    id serial PRIMARY KEY,
    name varchar(40)
);
INSERT INTO public.steel_grade(name)
VALUES ('35'), ('40'), ('45'), ('40Х'), ('40ХН'), ('35ХМ'), ('35Л'), ('40Л'), ('45Л'), ('40Г');


CREATE TABLE public.heat_treatment (
    id serial PRIMARY KEY,
    name varchar(40)
);
INSERT INTO public.heat_treatment(name)
VALUES ('Н'), ('У'), ('У+ТВЧ');


CREATE TABLE public.mechanical_characteristics (
    id serial PRIMARY KEY,
    steel_grade_id integer,
    limiting_diameter integer,
    heat_treatment_id integer,
    hardness_hrc_min integer,
    hardness_hrc_max integer,
    hardness_hb_min integer,
    hardness_hb_max integer,
    tensile_strength integer,
    yield_strength integer,
    endurance_limit integer,
    CONSTRAINT fk_steel_grade FOREIGN KEY(steel_grade_id) REFERENCES steel_grade(id),
    CONSTRAINT fk_heat_treatment_id FOREIGN KEY(heat_treatment_id) REFERENCES heat_treatment(id)
);
INSERT INTO public.mechanical_characteristics(steel_grade_id, limiting_diameter, heat_treatment_id, hardness_hrc_min, hardness_hrc_max, hardness_hb_min, hardness_hb_max, tensile_strength, yield_strength, endurance_limit)
VALUES                                       (1,              0,                 1,                 NULL,             NULL,             163,             192,             550,              270,            235 );
