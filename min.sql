create table users(
    id varchar2(20) primary key,
    pass varchar2(20) not null,
    name varchar2(15) not null,
    phone varchar2(20) not null
);

commit;

select * from users;