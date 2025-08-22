use project_1;

SELECT 
    U.user_id,
    U.first_name,
    U.last_name,
    P.policy_number,
    P.policy_status
FROM
    user_profile U
        JOIN
    policy_details P ON U.status = 'Active' = P.policy_status = 'Active';
    

-- count user by usertype --
    
select usertype, count(*) as totaluser
from user_profile
group by usertype;


-- Count of active vs expired vs pending policies --

select policy_status, count(*) as totalpolicy
from policy_details
group by policy_status;



-- Highest premium policy per user --

select user_id, max(total_premium) from policy_details
group by user_id;



-- Most common vehicle make in policies --

SELECT 
    m.make_desc, COUNT(*) AS total_policy
FROM
    policy_details p
        JOIN
    vehicle_make_master m ON p.vehicle_make_id = m.make_id
GROUP BY m.make_id
ORDER BY total_policy DESC;



-- Total premium collected (only Paid policies) --

select sum(total_premium) as total_collected
from policy_details
where payment_status = 'paid';



-- Average tax collected per policy --

select avg(tax_amount) as total_tax
from policy_details;



-- Premium Comparison Between Coverage Types --

select coverage_type, 
count(*) as total_policies,
sum(total_premium) as total_premium_collected,
avg(total_premium) as total_avg
from policy_details
where coverage_type in ('Comprehensive', 'Third Party')
group by coverage_type;



-- insurance policies categorized by their status --

SELECT policy_status, COUNT(*) AS total_policy
FROM policy_details
GROUP BY policy_status;



-- Policy Summary with Broker Information (Top 5 Records) --

SELECT 
    B.broker_id,
    B.broker_name,
    B.broker_org_name,
    P.coverage_type,
    P.total_premium,
    P.policy_status,
    P.payment_status
FROM
    broker_master B
        INNER JOIN
    policy_details P ON B.broker_id = P.broker_id
LIMIT 5;


-- Quotes Pending Conversion --

select quote_id,user_id,quote_status
from quote_info
where quote_status = 'pending'
order by quote_status;


 -- Policy Expiry Monitor --
 
 select policy_number, policy_status,policy_end_date
 from policy_details
 where policy_status = 'Expired'
 order by  policy_status;



-- where,select,from- basic queries --

-- active user only --

select user_id,first_name,last_name,status
from user_profile
where status = 'active';


-- paid policies --


select policy_number, total_premium
from policy_details
where payment_status = 'Paid';


-- Policies with premium greaterthen > 7000 --

select policy_number,total_premium
from policy_details
where total_premium > 7000;


-- Users by state --

select user_id,first_name,state
from user_profile
where state=2; 


-- Brokers from a specific organization --

select broker_id,broker_name
from broker_master
where broker_org_name = 'Secure Life';


-- Group by, order by using --

-- Count users by usertype --

select usertype, count(*) as total_ut
from login_user
group by usertype
order by total_ut desc;

 -- Premium by coverage type --

select coverage_type, sum(total_premium) as total_p
from policy_details
group by coverage_type
order by total_p asc;

-- Number of policies per broker --

select broker_id, count(*) as total_pb
from policy_details
group by broker_id
order by total_pb desc;

-- Policy count per user --

select user_id, count(*) as total_pu
from policy_details
group by user_id
order by total_pu desc;

-- Policies by status --

select policy_status, count(*) as total_s
from policy_details
group by policy_status
order by total_s desc;


-- Aggregate Functions – COUNT, SUM, AVG, MIN, MAX --

-- Total paid premiumn --

select sum(total_premium) as total_p
from policy_details
where payment_status = 'paid';

-- Average quote amount --

select avg(total_premium) as avg_quote
from quote_info;

select avg(total_premium) AS avg_premium
from quote_info
where quote_status = 'Finalized';

-- Maximum policy premium --

select max(total_premium) as max_policies
from policy_details;

-- Min tax collected --
select min(tax_amount) as min_tax
from policy_details;

-- Total quotes per user --

select user_id, count(*) as total_q
from quote_info
group by user_id;


-- Subqueries --

-- Users with highest total premium --

select user_id,first_name,last_name
from user_profile
where user_id in (
	select user_id
    from policy_details
    group by user_id
    order by sum(total_premium) desc
    );

--  Policies above average premium --

select policy_number,total_premium
from policy_details
where total_premium > (
		select avg(total_premium)
        from policy_details
        );
        
-- Brokers with more than 2 policies --

select broker_id,broker_name
from broker_master
where broker_id in  ( select broker_id 
						from policy_details
                        group by broker_id 
                        having count(*) > 2
                        );


-- Users with finalized quotes only --

select first_name,last_name
from user_profile
where user_id in ( 
					select user_id 
                    from quote_info
                    where quote_status = 'Finalized'
                    );
                    
-- List quotes with max base premium --

select quote_id,base_premium,coverage_type
from quote_info
where base_premium = (
						select max(base_premium)
                        from quote_info
                        );


-- joins  : inner join --
-- User and their policy numbers --

select 
U.user_id,
U.first_name,
U.last_name,
U.gender,
P.policy_number,
P.policy_status
from user_profile u
inner join policy_details P
on P.user_id = P.user_id
where policy_status = 'Active'
order by user_id;


-- Quotes and Vehicle Make --

select 
Q.quote_id,
V.make_desc,
Q.total_premium
from quote_info Q
inner join vehicle_make_master V
on Q.vehicle_make_id = V.make_id
where Q.total_premium > 6000
order by Q.quote_id;

-- Policies and Broker Info --

select 
B.broker_id,
B.broker_name,
B.broker_org_name,
P.policy_number,
P.coverage_type
from broker_master B
inner join policy_details P 
on B.broker_id = P.broker_id
where B.status = 'active';


-- Login Users with Profile Info --

select
L.login_id,
U.first_name,
L.usertype
from login_user L
inner join user_profile U
on L.user_id = U.user_id
where U.status = 'active';


-- Policies linked to Finalized Quotes --

select 
P.policy_number,
Q.quote_id,
P.total_premium
from policy_details P
inner join quote_info Q
on P.user_id = Q.user_id
where Q.quote_status = 'Finalized';


-- left joins --
-- Users and any policies --

select
U.user_id,
U.first_name,
P.policy_number,
P.payment_status
from user_profile U 
left join policy_details P 
on U.user_id = P.user_id
order by U.user_id;


--  Quotes with or without models --

select 
Q.quote_id,
V.model_desc
from quote_info Q
left join vehicle_model_master V
on Q.vehicle_model_id = V.model_id
order by Q.quote_id desc;


-- Login info for all users --

select 
U.user_id,
U.first_name,
U.phone,
L.login_id,
L.status
from user_profile U
left join login_user L 
on U.user_id = L.user_id
order by U.user_id;


-- RIGHT JOIN --
-- Brokers and policies sold --

select 
b.broker_id,
b.broker_name,
p.policy_number
from policy_details p
right join broker_master b
on b.broker_id = p.broker_id
order by b.broker_id;


-- Vehicle models with quotes --

select 
v.model_desc,
q.quote_id
from vehicle_model_master v
right join quote_info q
on v.model_id = q.vehicle_model_id
order by v.model_id;


-- SELF JOIN --
-- Users from the same state --


select  A.user_id as user1, B.user_id as user2, A.state
from user_profile A
join user_profile B
on A.state = B.state and A.user_id <> B.user_id
where A.state is not null
order by A.state;


-- Brokers from same org -- 

select A.broker_name, B.broker_name, A.broker_org_name
from broker_master A
join broker_master B
on A.broker_org_name = B.broker_org_name
where A.broker_id < B.broker_id;


 -- CROSS JOIN --
 -- Every broker with every user --
 
select u.first_name, b.broker_name
from user_profile u
cross join broker_master b
order by u.user_id, b.broker_id;


-- All users with all payment statuses -- 

select 
u.first_name,
p.payment_status
from user_profile u
cross join policy_details p
order by u.first_name;



-- Stored procedures --

-- Show total paid premium and number of active policies for a specific user --

DELIMITER $$
create procedure  proc_get_user_policy_summary(IN uid INT)
begin
select u.user_id, u.first_name, COUNT(p.policy_id) AS active_policies,
sum(p.total_premium) AS total_paid
from user_profile u
join policy_details p ON u.user_id = p.user_id
where u.user_id = uid AND p.payment_status = 'Paid'
group by u.user_id;
end  $$
DELIMITER ;

call proc_get_user_policy_summary(14);


-- List finalized quotes from quote_info --

DELIMITER $$
create procedure proc_list_finalized_quotes()
begin
select quote_id, user_id, total_premium, quote_status
from quote_info
where quote_status = 'Finalized'
order by total_premium DESC;
end $$
DELIMITER ;

CALL proc_list_finalized_quotes;


-- Check if a user is active in user_profile --

DELIMITER $$
create procedure  proc_check_user_active(in uid int)
begin
declare u_status varchar(10);

select status into u_status
from user_profile
where user_id = uid;

if u_status = 'Active' THEN
select 'User is active' AS message;
else
select 'User is not active or does not exist' AS message;
end if;
end $$
DELIMITER ;

CALL proc_check_user_active(4);


-- Fetch pending or expired policies by date range --

DELIMITER $$
create procedure  GetPoliciesByDate(in start_date date, in end_date date)
begin
select policy_number, policy_status, policy_end_date
from policy_details
where policy_end_date BETWEEN start_date AND end_date
and policy_status IN ('Pending', 'Expired')
order by policy_end_date;
end $$
DELIMITER ;

call GetPoliciesByDate('2025-01-01', '2026-01-01');


-- Functions --

-- Calculate total premium from base, addon, and tax --

DELIMITER $$

create function CalculateQuotePremium (qid int)
returns decimal(10, 2)
deterministic
begin
declare total decimal(10, 2);
select base_premium + add_on_premium + tax_amount into total
from quote_info
where quote_id = qid;
return total;
end $$

DELIMITER ;

-- Calling the function --
 
select quote_id, base_premium, add_on_premium, tax_amount,
CalculateQuotePremium(quote_id) AS calculated_total
from  quote_info
where quote_id = 101;


-- Return 'YES' if user is active, otherwise 'NO' --

delimiter $$

create function getuserstatusflag (uid int)
returns varchar(5)
deterministic
begin
declare flag varchar(5);
select if(status = 'active', 'yes', 'no') into flag
from user_profile
where user_id = uid;
return flag;
end $$

delimiter ;

-- call the function --

select user_id, first_name, status, getuserstatusflag(user_id) as is_active
from user_profile
where user_id = 5;


-- Return 'High', 'Medium', or 'Low' based on total premium --

delimiter $$

create function getpolicyrisklabel (pid int)
returns varchar(10)
deterministic
begin
declare risk varchar(10);
declare total decimal(10,2);

select total_premium into total
from policy_details
where policy_id = pid;

set risk = case
        when total > 7000 then 'high'
        when total between 4000 and 7000 then 'medium'
        else 'low'
end;
return risk;
end $$

delimiter ;

-- call function --

select policy_id, policy_number, getpolicyrisklabel(policy_id) as risk_level
from policy_details;


-- Format broker ID into code like BR-0001 --

delimiter $$

create function getbrokercode (bid int)
returns varchar(10)
deterministic
begin
    return concat('br-', lpad(bid, 4, '0'));
end $$

delimiter ;

-- call function --

select broker_id, broker_name, getbrokercode(broker_id) as broker_code
from broker_master;


