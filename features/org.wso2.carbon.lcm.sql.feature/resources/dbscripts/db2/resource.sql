
CREATE TABLE LC_DATA (
            LC_STATE_ID VARCHAR(36) NOT NULL ,
            LC_NAME VARCHAR(255),
            LC_STATUS VARCHAR(255),
            UNIQUE (LC_STATE_ID),
            PRIMARY KEY (LC_STATE_ID)
)/

CREATE TABLE LC_HISTORY (
            LC_ID INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
            LC_STATE_ID VARCHAR(36),
            PREVIOUS_STATE VARCHAR(255),
            POST_STATE VARCHAR(255),
            USERNAME VARCHAR(255),
            UPDATED_TIME TIMESTAMP,
            UNIQUE (LC_ID)
)/

CREATE TABLE LC_CHECKLIST_DATA(
            LC_ID INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
            LC_STATE_ID VARCHAR(36),
            LC_STATE VARCHAR(255),
            CHECKLIST_NAME VARCHAR(255),
            CHECKLIST_VALUE BOOLEAN DEFAULT FALSE,
            UNIQUE (LC_ID),
            FOREIGN KEY (LC_STATE_ID) REFERENCES LC_DATA(LC_STATE_ID)ON DELETE CASCADE
)/
