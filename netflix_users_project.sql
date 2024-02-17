create table Users(JoinDate char(10),
					LastPaymentDate char(10),
                    SubscriptionType char(10),
                    MonthlyRevenue numeric(5),
                    Country char(25),
                    Age numeric(2),
                    Gender char(10),
                    Device char(25),
                    PlanDuration varchar(25));
alter table Users
	add column UserID numeric(3) primary key;
select * from Users;
SET SQL_SAFE_UPDATES = 0;

update users set JoinDate = str_to_date(JoinDate, "%d/%m/%Y"); 
update users set LastPaymentDate = str_to_date(LastPaymentDate, "%d/%m/%Y");

select count(*) as number_of_rows from users;
select count(*) as number_of_columns 
from information_schema.columns 
where table_name = 'users';