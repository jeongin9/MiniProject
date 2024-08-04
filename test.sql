select * from tab;


CREATE TABLE  users  (
	 id 	varchar2(20)	NOT NULL,
	 name 	varchar2(30)	NULL,
	 pass 	number(16)	not NULL,
	 phone 	number(14) not null,
	 nickname 	varchar2(20)NOT NULL
);

CREATE TABLE  story  (
	 story 	number	NOT NULL,
	 place 	varchar2(1000)	NULL,
	 food 	varchar2(1000)	NULL,
	 regidate 	date default sysdate not null,
	 visitcount 	number	NULL,
	 story_photo 	varchar2(100)	NOT NULL,
	 story_content 	varchar2(1000)	NULL,
	 story_title 	varchar2(40)	NULL
);

CREATE TABLE  notice  (
	 notice 	number	NOT NULL,
	 notice_content 	varchar2(1000)	NULL,
	 regidate 	date default sysdate not null,
	 notice_title 	varchar2(40)	NOT NULL
);

CREATE TABLE  mainpage  (
     main number not null,
	 main_title 	varchar2(1000)	NOT NULL,
	 admin_id 	varchar2(20)	NOT NULL,
	 main_content 	varchar2(1000)	NULL,
	 magazine 	number	NOT NULL,
	 story 	number	NOT NULL,
	 food 	number	NOT NULL,
	 place 	number	NOT NULL,
	 notice 	number	NOT NULL,
	 event 	number	NOT NULL
);

CREATE TABLE  place  (
	 place 	number	NOT NULL,
	 regidate 	date default sysdate not null,
	 visitcount 	number	NULL,
	 place_photo 	varchar2(100)	NOT NULL,
	 place_content 	varchar2(1000)	NULL,
	 place_title 	varchar2(40)	NOT NULL
);

CREATE TABLE  food  (
	 food 	number	NOT NULL,
	 regidate 	date default sysdate not null,
	 visitcount 	number	NULL,
	 food_photo 	varchar2(100)	NOT NULL,
	 food_content 	varchar2(1000)	NULL,
	 food_title 	varchar2(40)	NULL
);


CREATE TABLE  admin  (
	 admin_id 	varchar2(20)	NOT NULL,
	 admin_name 	varchar2(30)	NOT NULL,
	 admin_pass 	number(16)	NOT NULL,
	 admin_nickname 	varchar2(20)	NOT NULL
);

CREATE TABLE  event  (
	 event 	number	NOT NULL,
	 regidate 	date	NULL,
	 visitcount 	number	NULL,
	 photo 	varchar2(100)	NOT NULL,
	 event_content 	varchar2(1000)	NULL,
	 event_title 	varchar2(40)	NULL
);


CREATE TABLE  travlemagazine  (
	 magazine 	number	NOT NULL,
	 place 	varchar2(1000)	NULL,
	 food 	varchar2(1000)	NULL,
	 regidate 	date default sysdate not null,
	 visitcount 	number	NULL,
	 photo 	varchar2(100)	NOT NULL,
	 magazine_content 	varchar2(1000)	NULL,
	 magazine_title 	varchar2(40)	NULL
);

ALTER TABLE  users  ADD CONSTRAINT  PK_users  PRIMARY KEY (
	 id 
);

ALTER TABLE  story  ADD CONSTRAINT  PK_story  PRIMARY KEY (
	 story 
);

ALTER TABLE  notice  ADD CONSTRAINT  PK_notice  PRIMARY KEY (
	 notice 
);

ALTER TABLE  mainpage  ADD CONSTRAINT  PK_mainpage  PRIMARY KEY (
    main
);

ALTER TABLE  place  ADD CONSTRAINT  PK_place  PRIMARY KEY (
	 place 
);

ALTER TABLE  food  ADD CONSTRAINT  PK_food  PRIMARY KEY (
	 food 
);

ALTER TABLE  admin  ADD CONSTRAINT  PK_admin  PRIMARY KEY (
	 admin_id 
);

ALTER TABLE  event  ADD CONSTRAINT  PK_event  PRIMARY KEY (
	 event 
);

ALTER TABLE  travlemagazine  ADD CONSTRAINT  PK_travlemagazine  PRIMARY KEY (
	 magazine 
);

ALTER TABLE  mainpage  ADD CONSTRAINT  FK_admin_TO_mainpage  FOREIGN KEY (
	 admin_id 
)
REFERENCES  admin  (
	 admin_id 
);


