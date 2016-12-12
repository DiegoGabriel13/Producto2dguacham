# --- First database schema

# --- !Ups


create table postres (
  id                        serial not null,
  nombre                      varchar(255),
  sabor							varchar(255),
  tamanio							varchar(255),
  precio						bigint not null, 
  constraint pk_postres primary key (id))
;



create sequence postres_seq start with 1000;



# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;


drop table if exists postres;

SET REFERENTIAL_INTEGRITY TRUE;


drop sequence if exists postres_seq;
