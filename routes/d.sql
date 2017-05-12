--------------------------------------------------------
--  File created - Friday-May-12-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table APPL_TBL
--------------------------------------------------------

  CREATE TABLE "SHELF"."APPL_TBL" 
   (	"APPL_ID" VARCHAR2(20 BYTE), 
	"APPL_NAME" VARCHAR2(40 BYTE), 
	"LOC_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AT_EVENT_TBL
--------------------------------------------------------

  CREATE TABLE "SHELF"."AT_EVENT_TBL" 
   (	"UUID" VARCHAR2(30 BYTE), 
	"READER" VARCHAR2(30 BYTE), 
	"ANTENNA" VARCHAR2(20 BYTE), 
	"READ_TIME" NUMBER, 
	"LOC_ID" VARCHAR2(10 BYTE), 
	"PREV_READ_TIME" NUMBER, 
	"PREV_LOC_ID" VARCHAR2(10 BYTE), 
	"STATUS" VARCHAR2(10 BYTE), 
	"DURATION" NUMBER, 
	"READ_DATE" DATE, 
	"PREV_READ_DATE" DATE, 
	"SEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEM_TBL
--------------------------------------------------------

  CREATE TABLE "SHELF"."ITEM_TBL" 
   (	"ITEM_NAME" VARCHAR2(50 BYTE), 
	"ITEM_CATEGORY" VARCHAR2(50 BYTE), 
	"ITEM_TYPE" VARCHAR2(50 BYTE), 
	"BASE_LOC_ID" VARCHAR2(50 BYTE), 
	"LOC_ID" VARCHAR2(50 BYTE), 
	"STATUS" VARCHAR2(50 BYTE), 
	"READ_TIME" NUMBER, 
	"READ_DATE" DATE, 
	"ITEM_ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOCATION_TBL
--------------------------------------------------------

  CREATE TABLE "SHELF"."LOCATION_TBL" 
   (	"LOC_ID" VARCHAR2(10 BYTE), 
	"LOC_NAME" VARCHAR2(30 BYTE), 
	"LOC_TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TAG_TBL
--------------------------------------------------------

  CREATE TABLE "SHELF"."TAG_TBL" 
   (	"UUID" VARCHAR2(40 BYTE), 
	"TYPE" VARCHAR2(20 BYTE), 
	"ITEM_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Sequence EVENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHELF"."EVENTS_SEQ"  MINVALUE 1 MAXVALUE 99999999999999999 INCREMENT BY 1 START WITH 65 NOCACHE  ORDER  NOCYCLE ;
REM INSERTING into SHELF.APPL_TBL
SET DEFINE OFF;
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR1SHF1','Floor 1,shelf 1 -Reader 1,antenna 1','F1S1');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR1SHF2','Floor 1,shelf 2 -Reader 1,antenna 2','F1S2');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR1SHF3','Floor 1,shelf 3 -Reader 1,antenna 3','F1S3');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR1SHF4','Floor 1,shelf 4 -Reader 1,antenna 4','F1S4');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR2SHF1','Floor 2,shelf 1 -Reader 2,antenna 1','F2S1');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR2SHF2','Floor 2,shelf 2 -Reader 2,antenna 2','F2S2');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR2SHF3','Floor 2,shelf 3 -Reader 2,antenna 3','F2S3');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR2SHF4','Floor 2,shelf 4 -Reader 2,antenna 4','F2S4');
Insert into SHELF.APPL_TBL (APPL_ID,APPL_NAME,LOC_ID) values ('FLR3','Floor 3','F3');
REM INSERTING into SHELF.AT_EVENT_TBL
SET DEFINE OFF;
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0627','FLR1SHF','1',1489381347506,'F1S1',1489381347506,'F3','Exit',0,to_date('13-MAR-17','DD-MON-RR'),to_date('13-MAR-17','DD-MON-RR'),57);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('ABE1 3606 0000 0000 0000 0000','FLR1SHF','3',1489383199785,'F1S3',1489383199785,'F3','Exit',0,to_date('13-MAR-17','DD-MON-RR'),to_date('13-MAR-17','DD-MON-RR'),58);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','2',1490588253466,'F1S2',1489464911683,'F3','Entry',18722.4,to_date('27-MAR-17','DD-MON-RR'),to_date('14-MAR-17','DD-MON-RR'),59);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','2',1490850873131,'F1S2',1490588253466,'F1S1','Entry',4377,to_date('30-MAR-17','DD-MON-RR'),to_date('27-MAR-17','DD-MON-RR'),60);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','1',1490850939288,'F1S1',1490850873131,'F1S2','Entry',1.1,to_date('30-MAR-17','DD-MON-RR'),to_date('30-MAR-17','DD-MON-RR'),61);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','1',1490853746932,'F1S1',1490850939288,'F1S1','Exit',46.8,to_date('30-MAR-17','DD-MON-RR'),to_date('30-MAR-17','DD-MON-RR'),62);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','2',1490853755079,'F1S2',1490853746932,'F1S1','Entry',0.1,to_date('30-MAR-17','DD-MON-RR'),to_date('30-MAR-17','DD-MON-RR'),63);
Insert into SHELF.AT_EVENT_TBL (UUID,READER,ANTENNA,READ_TIME,LOC_ID,PREV_READ_TIME,PREV_LOC_ID,STATUS,DURATION,READ_DATE,PREV_READ_DATE,SEQ) values ('E200 4000 8409 0060 0970 0618','FLR1SHF','2',1490853760858,'F1S2',1490853755079,'F1S2','Exit',0.1,to_date('30-MAR-17','DD-MON-RR'),to_date('30-MAR-17','DD-MON-RR'),64);
REM INSERTING into SHELF.ITEM_TBL
SET DEFINE OFF;
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1489381347506,to_date('13-MAR-17','DD-MON-RR'),'1');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('adidas  Synthetic Polo Shirts','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'2');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Aurelia Straight Kurta','Women''s ','ethnic wear','F1S2','F1S2','Picked-up',1490853760858,to_date('30-MAR-17','DD-MON-RR'),'3');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Aurelia Printed Kurta','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853395701,to_date('30-MAR-17','DD-MON-RR'),'4');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Vero Lie Casual Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'5');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Aurelia Straight Kurta','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853521885,to_date('30-MAR-17','DD-MON-RR'),'6');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Vero Lie Casual Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'7');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('fe','hjj','yrj','ry','ghd','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'8');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('${req.body.ITEM_NAME}','${req.body.ITEM_CATEGORY}','${req.body.ITEM_TYPE}','${req.body.BASE_LOC_ID}','${req.body.LOC_ID}','Misplaced',1490853549685,to_date('30-MAR-17','DD-MON-RR'),'9');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'10');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'11');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Aurelia Printed Kurta','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'12');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S3','Misplaced',1490853549685,to_date('30-MAR-17','DD-MON-RR'),'13');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1489381347506,to_date('13-MAR-17','DD-MON-RR'),'14');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Slim Jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'15');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Wrangler Skinny Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853527814,to_date('30-MAR-17','DD-MON-RR'),'16');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('New-Port Skinny jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'17');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('New-Port Skinny jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1489381347506,to_date('13-MAR-17','DD-MON-RR'),'18');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('New-Port Skinny jeans','Women''s ','Western wear','F1S1','F1S3','Misplaced',1490853549685,to_date('30-MAR-17','DD-MON-RR'),'19');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('New-Port Skinny jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'20');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('New-Port Skinny jeans','Women''s ','Western wear','F1S1','F1S2','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'21');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'22');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853533433,to_date('30-MAR-17','DD-MON-RR'),'23');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'24');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'25');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'26');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'27');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'28');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'29');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'30');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'31');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'32');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 Cropped Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853556054,to_date('30-MAR-17','DD-MON-RR'),'33');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'34');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'35');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'36');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'37');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'38');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'39');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'40');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'41');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'42');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Flying-Machine BootCut Pant','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853543273,to_date('30-MAR-17','DD-MON-RR'),'43');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Wrangler Hottie Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853533433,to_date('30-MAR-17','DD-MON-RR'),'44');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Wrangler Hottie Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853533433,to_date('30-MAR-17','DD-MON-RR'),'45');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Wrangler Hottie Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853533433,to_date('30-MAR-17','DD-MON-RR'),'46');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Wrangler Hottie Jeans','Women''s ','Western wear','F1S1','F1S1','In_shelf',1490853533433,to_date('30-MAR-17','DD-MON-RR'),'47');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Kenil fabric Cotton Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'48');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Kenil fabric Cotton Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'49');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Kenil fabric Cotton Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'50');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Kenil fabric Cotton Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'51');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Kenil fabric Cotton Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'52');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Janesya black printed Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'53');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Janesya black printed Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'54');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Janesya black printed Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'55');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Janesya black printed Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'56');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Janesya black printed Kurti','Women''s ','ethnic wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'57');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 printed T-Shirt','Women''s ','Western wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'58');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 printed T-Shirt','Women''s ','Western wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'59');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 printed T-Shirt','Women''s ','Western wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'60');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Vero Lie Casual Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'61');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Vero Lie Casual Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'62');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Jealous21 printed T-Shirt','Women''s ','Western wear','F1S2','F1S2','In_shelf',1490853562123,to_date('30-MAR-17','DD-MON-RR'),'63');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Rodid Solid Casual Denim Blue Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'64');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Rodid Solid Casual Denim Blue Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'65');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Rodid Solid Casual Denim Blue Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'66');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Rodid Solid Casual Denim Blue Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'67');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Rodid Solid Casual Denim Blue Shirt ','Men''s','Top wear','F1S3','F1S3','In_shelf',1490853515149,to_date('30-MAR-17','DD-MON-RR'),'68');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('adidas  Synthetic Polo Shirts','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'69');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('adidas  Synthetic Polo Shirts','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'70');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('adidas  Synthetic Polo Shirts','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'71');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Puma Men''s Polo Shirt ','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'72');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Puma Men''s Polo Shirt ','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'73');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Puma Men''s Polo Shirt ','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'74');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Puma Men''s Polo Shirt ','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'75');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Puma Men''s Polo Shirt ','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'76');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'77');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'78');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'79');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'80');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'81');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'82');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'83');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'84');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'85');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('Reebok Men''s Round Neck T Shirt','Men''s','Sports wear','F1S3','F1S3','In_shelf',1490332137879,to_date('13-MAR-17','DD-MON-RR'),'86');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('gfhf','fhfgh','fghfg','hfghfg','hfghfg',null,null,null,'87');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('ghjghj','hgfhgf','fhgghgf','hgfhgf','hgfhgf',null,null,null,'88');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('657657','yuut','ytuu','tuytu','tuytu',null,null,null,'89');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('ytjhvjhg','hjhgj','ghjgj','ghjghj','ghjghj',null,null,null,'90');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('fgdg','dgfgd','gfdgd','dfgfdg','dfgfdg',null,null,null,'91');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('gjghgh','gjhg','hjkhjk','kjhkjh','kjhkjh',null,null,null,'92');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('tttuytuyt','tyuytu','ytuuytu','uytuyt','uytuyt',null,null,null,'93');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('DGDG','GFDGDFG','FGGGDG','FGDGDF','FGDGDF',null,null,null,'94');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('FGHGFHF','FGHHFH','FGHFGH','FGHGFH','FGHGFH',null,null,null,'95');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('sdfdsf','sdfds','sdfds','sdfdf','sdfdf',null,null,null,'96');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('DDRSFFDS','SDFDS','SDFSD','FDSF','FDSF',null,null,null,'97');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('DSADSA','SADSAD','DSADSAD','DASD','DASD',null,null,null,'98');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('ADSD','SADSA','ADSAD','SAD','SAD',null,null,null,'99');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('FDDSF','DSFDS','DSF','DSFDS','DSFDS',null,null,null,'100');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('WEREW','WEREWR','WEREW','REWRE','REWRE',null,null,null,'101');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('SADA','DSASD','DSADS','SASA','SASA',null,null,null,'102');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('yhg','hgj','f3','jhg','jhg',null,null,null,'103');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('hjkk','hkjh','kjhk','f3','f3',null,null,null,'104');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('dfdf','dfd','fdfd','F3','F3',null,null,null,'105');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('fdgdfg','fgfd','dffdg','f3','f3',null,null,null,'106');
Insert into SHELF.ITEM_TBL (ITEM_NAME,ITEM_CATEGORY,ITEM_TYPE,BASE_LOC_ID,LOC_ID,STATUS,READ_TIME,READ_DATE,ITEM_ID) values ('fdsfds','sdfdsf','dsfds','f3','f3',null,null,null,'107');
REM INSERTING into SHELF.LOCATION_TBL
SET DEFINE OFF;
Insert into SHELF.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('F1S1','FLOOR 1 SHELF 1','IN-STORE');
Insert into SHELF.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('F3','FLOOR 3','WAREHOUSE');
Insert into SHELF.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('F1S2','FLOOR 1 SHELF 2','IN-STORE');
Insert into SHELF.LOCATION_TBL (LOC_ID,LOC_NAME,LOC_TYPE) values ('F1S3','FLOOR 1 SHELF 3','IN-STORE');
REM INSERTING into SHELF.TAG_TBL
SET DEFINE OFF;
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('EEA13230','RFID',null);
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('ABE1 3606 0000 0000 0000 0000 ','RFID','2');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0618','RFID','3');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0619','RFID','4');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0620','RFID','5');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0621','RFID','6');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0622','RFID','7');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0623','RFID','8');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0624','RFID','9');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0625','RFID','10');
Insert into SHELF.TAG_TBL (UUID,TYPE,ITEM_ID) values ('E200 4000 8409 0060 0970 0626','RFID','11');
--------------------------------------------------------
--  DDL for Index TAG_TBL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHELF"."TAG_TBL_PK" ON "SHELF"."TAG_TBL" ("ITEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger BEFORE_EVENT_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SHELF"."BEFORE_EVENT_INSERT" BEFORE
  INSERT ON AT_EVENT_TBL FOR EACH ROW DECLARE
    -- variable declarations
    v_loc_id       VARCHAR2(20);
  v_prev_loc_id    VARCHAR2(10);
  v_prev_read_time NUMBER;
  v_prev_read_date DATE;
  v_read_date      DATE;
  v_item_id        VARCHAR2(20);
  v_base_loc_id    VARCHAR2(10);
  v_event_status   VARCHAR2(10);
  v_item_status    VARCHAR2(10);
  v_prev_status    VARCHAR2(10);
  BEGIN
    --Get the current Read Date from the Read Time in Millseconds
    BEGIN
      SELECT TO_DATE('197001','YYYYMM') + (:new.READ_TIME / 1000 / 60 / 60 / 24)
      INTO v_read_date
      FROM DUAL;
    END;
    /*************************************************************/
    --Find the current location based on the reader ID
    BEGIN
      SELECT LOC_ID
      INTO v_loc_id
      FROM APPL_TBL
      WHERE APPL_ID = :new.READER
        ||:new.ANTENNA ;
    END;
    /*************************************************************/
    --Find the prev read location and time for the Item
    BEGIN
      SELECT A.ITEM_ID,
        A.LOC_ID,
        A.READ_TIME,
        A.READ_DATE,
        A.STATUS,
        A.BASE_LOC_ID
      INTO v_item_id,
        v_prev_loc_id,
        v_prev_read_time,
        v_prev_read_date,
        v_prev_status,
        v_base_loc_id
      FROM ITEM_TBL A,
        TAG_TBL B
      WHERE B.UUID =:new.UUID
      AND A.ITEM_ID=B.ITEM_ID;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_loc_id    := v_loc_id;
      v_prev_read_time := :new.READ_TIME;
      v_prev_read_date := v_read_date;
    END;
    /*************************************************************/
    --Determine the status of the event as entry or exit
    BEGIN
      IF v_prev_loc_id   = v_loc_id THEN
        IF v_prev_status ='Picked-up' THEN
          v_event_status:='Entry';
        ELSE
          v_event_status:='Exit';
          v_item_status :='Picked-up';
        END IF;
      ELSE
        v_event_status:='Entry';
      END IF;
      --Set Item Status as Warehouse or Deployed if not in transit based on base location
      IF v_item_status  IS NULL THEN
        IF v_loc_id      = v_base_loc_id THEN
          v_item_status := 'In_shelf';
        ELSE
          v_item_status := 'Misplaced';
        END IF;
      END IF;
    END;
    /*************************************************************/
    --Update the Item Table for the latest reading values before updating the event table
    BEGIN
      dbms_output.put_line(v_item_id);
      UPDATE ITEM_TBL
      SET LOC_ID    = v_loc_id,
        STATUS      = v_item_status,
        READ_TIME   = :new.READ_TIME,
        READ_DATE   = v_read_date
      WHERE ITEM_ID = v_item_id;
    END;
    /*************************************************************/
    --Get the sequence number
    BEGIN
      IF :new.SEQ IS NULL THEN
        SELECT EVENTS_SEQ.NEXTVAL INTO :new.SEQ FROM dual;
      END IF;
    END;
    /*************************************************************/
    --Assign the new values for insert
    :new.LOC_ID         := v_loc_id;
    :new.PREV_READ_TIME := v_prev_read_time;
    :new.PREV_LOC_ID    := v_prev_loc_id;
    :new.STATUS         := v_event_status;
    :new.DURATION       := ROUND((:new.READ_TIME - v_prev_read_time)/(1000*60),1);
    :new.READ_DATE      := v_read_date;
    :new.PREV_READ_DATE := v_prev_read_date;
    /*************************************************************/
  END;
/
ALTER TRIGGER "SHELF"."BEFORE_EVENT_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Procedure BEFORE_EVENT_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHELF"."BEFORE_EVENT_INSERT" AS 
    -- variable declarations
  v_loc_id       VARCHAR2(20);
  v_prev_loc_id    VARCHAR2(10);
  v_prev_read_time NUMBER;
  v_prev_read_date DATE;
  v_read_date      DATE;
  v_item_id        VARCHAR2(20);
  v_base_loc_id    VARCHAR2(10);
  v_event_status   VARCHAR2(10);
  v_item_status    VARCHAR2(10);
  BEGIN
    BEGIN
      --Get the current Read Date from the Read Time in Millseconds
      BEGIN
        SELECT TO_DATE('197001','YYYYMM') + (:new.READ_TIME / 1000 / 60 / 60 / 24)
        INTO v_read_date
        FROM DUAL
      END;
    /*************************************************************/
    --Find the current location based on the reader ID
    BEGIN
      SELECT LOC_ID
      INTO v_loc_id
      FROM APPL_TBL
      WHERE APPL_ID = :new.READER
        ||:new.ANTENNA ;
    END;
    /*************************************************************/
    --Find the prev read location and time for the Item
    BEGIN
      SELECT ITEM_ID,
        LOC_ID,
        READ_TIME,
        READ_DATE,
        STATUS,
        BASE_LOC_ID
      INTO v_item_id,
        v_prev_loc_id,
        v_prev_read_time,
        v_prev_read_date,
        v_prev_status,
        v_base_loc_id
      FROM ITEM_TBL A,
        TAG_TBL B
      WHERE B.UUID =:new.UUID
      AND a.ITEM_ID=B.ITEM_ID;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_loc_id    := v_loc_id;
      v_prev_read_time := :new.READ_TIME;
      v_prev_read_date := v_read_date;
    END;
    /*************************************************************/
    --Determine the status of the event as entry or exit
    BEGIN
      IF v_prev_loc_id   = v_loc_id THEN
        IF v_prev_status ='Transit' THEN
          v_event_status:='Entry';
        ELSE
          v_event_status:='Exit';
          v_item_status :='Transit';
        END IF;
      ELSE
        v_event_status:='Entry';
      END IF;
      --Set Item Status as Warehouse or Deployed if not in transit based on base location
      IF v_item_status  != 'Transit' THEN
        IF v_loc_id      = v_base_loc_id THEN
          v_item_status := 'Warehouse';
        ELSE
          v_item_status := 'Deployed';
        END IF;
      END IF;
    END;
    /*************************************************************/
    --Update the Item Table for the latest reading values before updating the event table
    BEGIN
      UPDATE ITEM_TBL
      SET LOC_ID    = v_loc_id,
        STATUS      = v_item_status,
        READ_TIME   = :new.READ_TIME,
        READ_DATE   = v_read_date
      WHERE ITEM_ID = v_item_id;
    END;
    /*************************************************************/
    --Assign the new values for insert

      :new.LOC_ID         := v_loc_id;
      :new.PREV_READ_TIME := v_prev_read_time;
      :new.PREV_LOC_ID    := v_prev_loc_id;
      :new.STATUS         := v_event_status;
      :new.DURATION       := (v_prev_read_time - :new.READ_TIME)/(1000*60);
      :new.READ_DATE      := v_read_date;
      :new.PREV_READ_DATE := v_prev_read_date;
  
    /*************************************************************/
  END

/
--------------------------------------------------------
--  Constraints for Table TAG_TBL
--------------------------------------------------------

  ALTER TABLE "SHELF"."TAG_TBL" MODIFY ("UUID" NOT NULL ENABLE);
