use experiment_catalog;

ALTER TABLE EXPERIMENT_INPUT ADD COLUMN OVERRIDE_FILENAME VARCHAR(255);
ALTER TABLE PROCESS_INPUT ADD COLUMN OVERRIDE_FILENAME VARCHAR(255);