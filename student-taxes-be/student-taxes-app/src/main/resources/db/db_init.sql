create table if not exists account
(
    account_id bigint auto_increment
    primary key,
    cnp        varchar(255) null,
    email      varchar(255) null,
    first_name varchar(255) null,
    last_name  varchar(255) null,
    password   varchar(255) null,
    phone      varchar(255) null,
    role       varchar(255) null
    );

create table if not exists active_fee
(
    active_fee_id bigint auto_increment
    primary key,
    comment       varchar(255) null,
    details       varchar(255) null,
    limit_date    datetime(6)  null,
    name          varchar(255) null,
    value         float        null,
    account_id    bigint       null,
    constraint FKrcksak1fc6q73btgolfyhhgfd
    foreign key (account_id) references account (account_id)
    );

create table if not exists active_study
(
    active_study_id bigint auto_increment
    primary key,
    abbreviation    varchar(255) null,
    accommodated    varchar(255) null,
    budget          bit          null,
    cycle           varchar(255) null,
    department      varchar(255) null,
    faculty         varchar(255) null,
    form            varchar(255) null,
    study_program   varchar(255) null,
    year            int          null,
    account_id      bigint       null,
    constraint FKp4omrnobdfcv7gc3ndjbgui11
    foreign key (account_id) references account (account_id)
    );

create table if not exists hostel_fee
(
    hostel_fee_id bigint auto_increment
    primary key,
    budget        bit          null,
    hostel_name   varchar(255) null,
    name          varchar(255) null,
    type          varchar(255) null,
    value         float        null
    );

create table if not exists other_fees
(
    other_fees_id bigint auto_increment
    primary key,
    name          varchar(255) null,
    type          varchar(255) null,
    value         float        null
    );

create table if not exists paid_fee
(
    paid_fee_id     bigint auto_increment
    primary key,
    comment         varchar(255) null,
    date_of_payment datetime(6)  null,
    details         varchar(255) null,
    name            varchar(255) null,
    value           float        null,
    account_id      bigint       null,
    constraint FKqijh0wbsu88jdrj260uqy3gdc
    foreign key (account_id) references account (account_id)
    );

create table if not exists study
(
    study_id      bigint auto_increment
    primary key,
    abbreviation  varchar(255) null,
    cycle         varchar(255) null,
    department    varchar(255) null,
    faculty       varchar(255) null,
    form          varchar(255) null,
    study_program varchar(255) null,
    year          int          null
    );

create table if not exists study_fee
(
    study_fee_id bigint auto_increment
    primary key,
    name         varchar(255) null,
    type         varchar(255) null,
    value        float        null,
    study_id     bigint       null,
    constraint FKg59irhysd1bt7n96gpvmixn5m
    foreign key (study_id) references study (study_id)
    );

INSERT INTO `account` VALUES (1,NULL,'admintaxestudentesti@gmail.com','Admin','Taxe','$2a$10$JZNZU39nHmgq5Dv3rb9DT.pqMEjhmq8kgN76Bt3Wd9cgbqm/gLC5y','0784874557','Admin'),(2,NULL,'biroutaxestudentesti@gmail.com','Birou','Taxe','$2a$10$ur2nGScSanqvgyJD4v/VCuooatX9FqbbGolu496gNCssmcgmgkZ2i','0784874556','Birou Taxe'),(3,'1111122222333','user@gmail.com','User','User','$2a$10$AD85z9oylI9uQzzQwlvXCeqHV9Pjrt9MrfxnOZAbBDCjc5B8G1CsO','07858645787','Student');

INSERT INTO `active_fee` VALUES (169,'','IETI_CTI_MTI_IF_1','2023-07-21 00:00:00.000000','Taxa studiu',3000,3),(174,'','C1','2023-07-15 00:00:00.000000','Taxa camin C1',130,3);

INSERT INTO `active_study` VALUES (16,'IETI_CTI_MTI_IF_1','',_binary '\0','master','CTI','IETI','IF','MTI',1,3);

INSERT INTO `hostel_fee` VALUES (9,_binary '\0','C1','Taxa camin C1','lunara',130);

INSERT INTO `paid_fee` VALUES (1,'','2022-05-29 23:09:58.129000','IETI_CTI_MTI_IF_1','Taxa studiu',3000,3),(2,'','2023-05-31 17:05:39.297000','IETI_CTI_MTI_IF_1','Taxa studiu',3000,3),(13,'','2023-05-26 22:44:02.292000','IETI_CTI_MTI_IF_1','Taxa studiu',3000,3);

INSERT INTO `study` VALUES (1,'IETI_CTI_MTI_IF_1','master','CTI','IETI','IF','MTI',1);

INSERT INTO `study_fee` VALUES (1,'Taxa studiu','anuala',3000,1);
