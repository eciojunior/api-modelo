create table module (
   id SERIAL PRIMARY KEY,
   description VARCHAR NOT null,
   available boolean not null default true
);

insert into public.module (description) values ('Módulo');
insert into public.module (description) values ('Autorização');

create table public.role (
   id SERIAL PRIMARY KEY,
   key VARCHAR NOT null UNIQUE,
   description VARCHAR NOT null,
   id_module SERIAL references public.module,
   available boolean not null default true
);

insert into public.role (key, description, id_module) values ('MODULE_EDIT', 'Editar', 1);
insert into public.role (key, description, id_module) values ('MODULE_OPEN', 'Abrir', 1);
insert into public.role (key, description, id_module) values ('MODULE_INSERT', 'Inserir', 1);
insert into public.role (key, description, id_module) values ('MODULE_DELET', 'Deletar', 1);
insert into public.role (key, description, id_module) values ('ROLE_EDIT', 'Editar', 1);
insert into public.role (key, description, id_module) values ('ROLE_OPEN', 'Abrir', 1);
insert into public.role (key, description, id_module) values ('ROLE_INSERT', 'Inserir', 1);
insert into public.role (key, description, id_module) values ('ROLE_DELET', 'Deletar', 1);


create table public.profile_role (
   id SERIAL PRIMARY KEY,
   id_role SERIAL references public.role,
   profile VARCHAR NOT null,
   available boolean not null default true,
   CONSTRAINT unq_profile_role UNIQUE(id_role, profile)
);

insert into public.profile_role (id_role, profile) values (1, 'admin');
insert into public.profile_role (id_role, profile) values (2, 'admin');
insert into public.profile_role (id_role, profile) values (3, 'admin');
insert into public.profile_role (id_role, profile) values (4, 'admin');
insert into public.profile_role (id_role, profile) values (5, 'admin');
insert into public.profile_role (id_role, profile) values (6, 'admin');
insert into public.profile_role (id_role, profile) values (7, 'admin');
insert into public.profile_role (id_role, profile) values (8, 'admin');

