create table AUTHORS(
    AUTHOR_ID int prymary key,
    AUTHOR_NAME varchar (64) not null,
    NOTE varchar (255),
    check (AUTHOR_NAME is not null)
);

create table DOCUMENTS(
    DOCUMENTS_ID int prymary key,
    DOCUMENTS_NAME varchar (64) not null,
    TEXT varchar (1024),
    CREATE_DATE date not null,
    AUTHOR_ID int not null,
    check (DOCUMENTS_NAME is not null),
    check (CREATE_DATE is not null),
    check (AUTHOR_ID is not null),
    foreign key (AUTHOR_ID) references AUTHORS (AUTHOR_ID)
);

insert into AUTHORS values 
    (1, 'Arnold Grey', null),
    (2, 'Tom Hawkins', 'new author'),
    (3, 'Jim Beam', null);

insert into DOCUMENTS values
    (1, 'Project plan', 'First content', '01.01.2022', 1),
    (2, 'First report', 'Second content', '02.01.2022', 2),
    (3, 'Test result', 'Third content', '03.01.2022', 2),
    (4, 'Second report', 'Report content', '04.01.2022', 3);