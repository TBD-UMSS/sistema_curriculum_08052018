/**********************I-DEP-YAC-CURR-0-08-05-2018**********************/
--------------- SQL ---------------

ALTER TABLE curr.estudio
  ADD CONSTRAINT estudio_fk FOREIGN KEY (id_dato_personal)
    REFERENCES curr.dato_personal(id_dato_personal)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
    NOT DEFERRABLE;




/**********************F-DEP-YAC-CURR-0-08-05-2018**********************/