--------------------------------------------------------
-- Archivo creado  - viernes-marzo-10-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PERSONA
--------------------------------------------------------

  CREATE TABLE "JAVA"."PERSONA" 
   (	"ID_PERSONA" NUMBER(*,0), 
	"DOCUMENTO" VARCHAR2(20 BYTE), 
	"APELLIDO1" VARCHAR2(30 BYTE), 
	"APELLIDO2" VARCHAR2(30 BYTE), 
	"NOMBRE1" VARCHAR2(30 BYTE), 
	"NOMBRE2" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into JAVA.PERSONA
SET DEFINE OFF;
Insert into JAVA.PERSONA (ID_PERSONA,DOCUMENTO,APELLIDO1,APELLIDO2,NOMBRE1,NOMBRE2) values ('1','11111','DUARTE',null,'NICO',null);
Insert into JAVA.PERSONA (ID_PERSONA,DOCUMENTO,APELLIDO1,APELLIDO2,NOMBRE1,NOMBRE2) values ('2','22222','PEREZ','LOPEZ','HERNAN',null);
Insert into JAVA.PERSONA (ID_PERSONA,DOCUMENTO,APELLIDO1,APELLIDO2,NOMBRE1,NOMBRE2) values ('3','33333','GIMENEZ',null,'JOSE',null);
Insert into JAVA.PERSONA (ID_PERSONA,DOCUMENTO,APELLIDO1,APELLIDO2,NOMBRE1,NOMBRE2) values ('4','44444','QUIJANO',null,'PILAR',null);
Insert into JAVA.PERSONA (ID_PERSONA,DOCUMENTO,APELLIDO1,APELLIDO2,NOMBRE1,NOMBRE2) values ('5','55555','DURAN',null,'ALEJANDRA',null);
--------------------------------------------------------
--  DDL for Index UK_PERSONA_DOCUMENTO
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA"."UK_PERSONA_DOCUMENTO" ON "JAVA"."PERSONA" ("DOCUMENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PERSONA
--------------------------------------------------------

  CREATE UNIQUE INDEX "JAVA"."PK_PERSONA" ON "JAVA"."PERSONA" ("ID_PERSONA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PERSONA
--------------------------------------------------------

  ALTER TABLE "JAVA"."PERSONA" MODIFY ("ID_PERSONA" NOT NULL ENABLE);
  ALTER TABLE "JAVA"."PERSONA" MODIFY ("DOCUMENTO" NOT NULL ENABLE);
  ALTER TABLE "JAVA"."PERSONA" MODIFY ("APELLIDO1" NOT NULL ENABLE);
  ALTER TABLE "JAVA"."PERSONA" MODIFY ("NOMBRE1" NOT NULL ENABLE);
  ALTER TABLE "JAVA"."PERSONA" ADD CONSTRAINT "PK_PERSONA" PRIMARY KEY ("ID_PERSONA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "JAVA"."PERSONA" ADD CONSTRAINT "UK_PERSONA_DOCUMENTO" UNIQUE ("DOCUMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
