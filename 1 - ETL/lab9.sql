/* Golf DB 1 and DB 2*/
drop table results1;
drop table results2;
drop table players1;
drop table players2;
drop table team1;
drop table team2;
drop table tournament1;
drop table tournament2;


Create Table Team1(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Team2(
Team_id integer primary key,
Team_name varchar(100)
);

Create Table Players1(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_1 foreign key (team_id) references team1
);

Create Table Players2(
p_id integer primary key,
p_name varchar(50),
p_sname varchar(50),
team_id integer,
constraint fk_team_2 foreign key (team_id) references team2
);

Create Table Tournament1(
T_id integer primary key,
t_descriprion varchar(100),
t_date date,
Total_price float
);

Create Table Tournament2(
T_id integer primary key,
t_descriprion varchar(100),
t_date date,
Total_price float
);

Create Table Results1(
t_id integer,
p_id integer,
rank integer,
price float,
CONSTRAINT  FK_player1 FOREIGN KEY (p_id) REFERENCES players1,
CONSTRAINT  FK_tournament1 FOREIGN KEY (t_id) REFERENCES tournament1,
CONSTRAINT PK_Results1 PRIMARY KEY (t_id,p_id)
);

Create Table Results2(
t_id integer,
p_id integer,
rank integer,
price float,
CONSTRAINT  FK_player2 FOREIGN KEY (p_id) REFERENCES players2,
CONSTRAINT  FK_tournament2 FOREIGN KEY (t_id) REFERENCES tournament2,
CONSTRAINT PK_Results2 PRIMARY KEY (t_id,p_id)
);

/* END ER DIAGRAM */


/* data */
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (1, 'USA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (2, 'AUSTRALIA');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (3, 'UK');
INSERT INTO TEAM1 (TEAM_ID, TEAM_NAME) VALUES (4, 'IRELAND');

INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (1, 'UK');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (2, 'IRELAND');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (3, 'USA');
INSERT INTO TEAM2 (TEAM_ID, TEAM_NAME) VALUES (4, 'ITALY');



INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'Tiger', 'Woods', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Mary', 'Smith', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Mark', 'Deegan', 2);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'James', 'Bryan', 3);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'John', 'McDonald', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Mario', 'Baggio', 1);

INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (2, 'Tiger', 'Woods', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (1, 'John', 'McDonald', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (3, 'Jim', 'Burke', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (4, 'Paul', 'Bin', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (5, 'Peter', 'Flynn', 3);
INSERT INTO PLAYERS2 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (6, 'Martha', 'Ross', 4);


INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'US open', 1700000,'01-jan-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'British Open', 7000000,'01-apr-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Italian Open', 2000000,'11-mar-2014');
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Irish Open', 300000,'21-jul-2014');

INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (1, 'Dutch open', 1700000,'22-nov-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (2, 'French Open', 7000000,'17-dec-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (3, 'Spanish Open', 2000000,'03-mar-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (4, 'Chiinese Open', 300000,'15-jul-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (5, 'Dubai Open', 600000,'10-aug-2014');
INSERT INTO TOURNAMENT2 (T_ID, T_DESCRIPRION, TOTAL_PRICE,t_date) VALUES (6, 'US Master', 1000000,'10-jul-2014');


INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 2, 20000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 4, 1000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 2, 1100);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 3, 6000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 9000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 1, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 2, 9500);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 4, 10000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 7, 100);

INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 1, 1, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (1, 2, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 2, 1, 6000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 2, 3, 17000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 1, 12, 1100);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 6, 10, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 2, 2, 12000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 1, 3, 10000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (3, 5, 1, 9000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (4, 5, 5, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (2, 5, 3, 1000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 5, 3, 8000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 2, 2, 16000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (5, 1, 1, 20000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 1, 3, 2000);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 5, 2, 9400);
INSERT INTO RESULTS2 (T_ID, P_ID, RANK, PRICE) VALUES (6, 4, 1, 12000);

create table PlayerDim(
player_sk integer primary key,
p_name varchar(100)
);

create table TeamDim(
team_sk integer primary key,
team_name varchar(100)
);

create table TournamentDim(
tournament_sk integer primary key,
tournament_desc varchar(100),
total_price float
);

create table DateDim(
date_sk integer primary key,
day integer,
month integer,
year integer,
week integer,
quarter integer,
dayOfWeek integer
);

create table fact_results(
player_sk integer,
tournament_sk integer,
team_sk integer,
date_sk integer,
rank integer,
price float,
constraint fk_player foreign key (player_sk) references PlayerDim,
constraint fk_tournament foreign key (tournament_sk) references TournamentDim,
constraint fk_team foreign key (team_sk) references TeamDim,
constraint fk_date foreign key (date_sk) references DateDim
);


-----------------temp tables ----------------------------

create table team_temp(
team_sk integer,
sourceDB integer,
team_id integer,
team_name varchar(100));

create table player_temp(
player_sk integer,
sourceDB integer,
p_id integer,
player_name varchar(100),
team_id integer);

create table tournament_temp(
tournament_sk integer,
sourceDB integer,
t_id integer,
t_description varchar(100),
Total_price float);

create table date_temp(
date_sk integer,
sourceDB integer,
t_id integer,
t_date date);

create table fact_temp(
sourcedb integer,
player_sk integer,
tournament_sk integer,
team_sk integer,
date_sk integer,
p_id integer,
t_id integer,
rank integer,
price float
);

------------------team sequence and trigger ------------------

create sequence team_temp_seq 
start with 1 
increment by 1; 

create trigger team_temp_trigger
before insert on team_temp
for each row
begin
select team_temp_seq.nextval into :new.team_sk from dual;
end;

insert into team_temp (sourcedb,team_id,team_name) select 1,team_id,team_name from team1;
insert into team_temp (sourcedb,team_id,team_name) select 2,team_id,team_name from team2;
insert into teamDim select min(team_sk), team_name from team_temp group by team_name having count(team_name) >= 1;

------------------player sequence and trigger ------------------

create sequence player_temp_seq 
start with 1 
increment by 1; 

create trigger player_temp_trigger
before insert on player_temp
for each row
begin
select player_temp_seq.nextval into :new.player_sk from dual;
end;

insert into player_temp (sourcedb,p_id,player_name,team_id) select 1,p_id,CONCAT(p_name,p_sname),team_id from Players1;
insert into player_temp (sourcedb,p_id,player_name,team_id) select 2,p_id,CONCAT(p_name,p_sname),team_id from Players2;
insert into playerDim select min(player_sk), player_name from player_temp group by player_name having count(player_name) >= 1;

------------------tournament sequence and trigger ------------------

create sequence tour_temp_seq 
start with 1 
increment by 1; 

create trigger tour_temp_trigger
before insert on tournament_temp
for each row
begin
select tour_temp_seq.nextval into :new.tournament_sk from dual;
end;

insert into tournament_temp (sourcedb,t_id,t_description,Total_price) select 1,t_id,t_description,Total_price from Tournament1;
insert into tournament_temp (sourcedb,t_id,t_description,Total_price) select 2,t_id,t_description,round(Total_price / 1.3,2) from Tournament2;
insert into TournamentDim select tournament_sk, T_description, total_price from tournament_temp order by tournament_sk;

------------------date sequence and trigger ------------------

create sequence date_temp_seq 
start with 1 
increment by 1; 

create trigger date_temp_trigger
before insert on date_temp
for each row
begin
select date_temp_seq.nextval into :new.date_sk from dual;
end;

insert into date_temp (sourcedb,t_date,t_id) select 1,t_date,t_id from tournament1;
insert into date_temp (sourcedb,t_date,t_id) select 2,t_date,t_id from tournament2;
insert into DateDim select date_sk, cast(to_char(t_date,'DD') as integer), cast(to_char(t_date,'MM') as integer), cast(to_char(t_date,'YYYY') as integer), cast(to_char(t_date,'WW') as integer), cast(to_char(t_date,'Q') as integer), cast(to_char(t_date,'D') as integer) from date_temp;

------------------fact update and trigger ------------------

insert into fact_temp(sourcedb,p_id,t_id,rank,price) select 1,p_id,t_id,rank,price from results1;
insert into fact_temp(sourcedb,p_id,t_id,rank,price) select 2,p_id,t_id,rank,price from results2;

update fact_temp set team_sk=(select team_temp.team_sk from team_temp where (team_temp.sourceDB=fact_temp.sourceDB and team_temp.team_id = fact_temp.t_id)); 
update fact_temp set player_sk=(select player_temp.player_sk from player_temp  where (player_temp.sourceDB=fact_temp.sourceDB and player_temp.p_id = fact_temp.p_id));
update fact_temp set tournament_sk=(select tournament_temp.tournament_sk from tournament_temp  where (tournament_temp.sourceDB=fact_temp.sourceDB and tournament_temp.t_id = fact_temp.t_id));
update fact_temp set date_sk=(select date_temp.date_sk from date_temp where (date_temp.sourceDB=fact_temp.sourceDB and date_temp.t_id = fact_temp.t_id)); 
update fact_temp insert into fact_results select player_sk,tournament_sk,year_sk,total from fact_temp;

------------------second load -----------------------

INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (7, 'Alan', 'Parker', 1);
INSERT INTO PLAYERS1 (P_ID, P_NAME, P_SNAME, TEAM_ID) VALUES (8, 'Martha', 'Bag', 2);
INSERT INTO TOURNAMENT1 (T_ID, T_DESCRIPRION, TOTAL_PRICE) VALUES (5, 'Saudi Open', 500000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (5, 1, 1, 60000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (5, 7, 5, 20000);
INSERT INTO RESULTS1 (T_ID, P_ID, RANK, PRICE) VALUES (2, 8, 3, 1000);


