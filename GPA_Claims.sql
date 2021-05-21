--- Creating Database
create database gpa;
use gpa
go

---------Creating policy Type table
     CREATE TABLE policytype
(
  policytype_id    CHAR(6)     NOT NULL,
  name    VARCHAR(50)     NOT NULL,
  description    VARCHAR(50)     NOT NULL,
  CONSTRAINT pk_policytype PRIMARY KEY (policytype_id)
  );
  -- Inserting data
  INSERT INTO policytype VALUES('pt:001','Personal Auto','Personal Auto');
  INSERT INTO policytype VALUES('pt:002','Commerical Auto','Commerical Auto');
  INSERT INTO policytype VALUES('pt:003','Motor Cycle','Motor Cycle');
  INSERT INTO policytype VALUES('pt:004','HomeOwners','HomeOwners');
  INSERT INTO policytype VALUES('pt:005','Commercial Property','Commercial Property');
  INSERT INTO policytype VALUES('pt:006','Travel Trailer','Travel Trailer');

  
  ---- Creating policy status
   CREATE TABLE policystatus
(
  policystatus_id    CHAR(6)     NOT NULL,
  name    VARCHAR(50)     NOT NULL,
  description    VARCHAR(50)     NOT NULL,
  CONSTRAINT pk_policystatus PRIMARY KEY (policystatus_id)
  );
  ---Inserting data
  INSERT INTO policystatus VALUES('ps:001','In Force','Policies which are Active');
  INSERT INTO policystatus VALUES('ps:002','Out Of Force','Expired Policy');
  INSERT INTO policystatus VALUES('ps:003','Balance Due','Active Policy with pending Payments');
  INSERT INTO policystatus VALUES('ps:004','ReInstated','Active Policy with requested Changes');

   ---- Creating LossCauseType
  CREATE TABLE losscausetype
(
  losscause_id    CHAR(6)     NOT NULL,
  name    VARCHAR(50)     NOT NULL,
  description    VARCHAR(50)     NOT NULL,
  CONSTRAINT pk_losscausetype PRIMARY KEY (losscause_id)
  );
  --- Inserting data
  INSERT INTO losscausetype VALUES('lc:001','Collision','Collide with other vehicles/fixed objects');
  INSERT INTO losscausetype VALUES('lc:002','EarthQuake','Earth Movement ');
   INSERT INTO losscausetype VALUES('lc:003','Explosion','Fire arms & Miscellanous');
  INSERT INTO losscausetype VALUES('lc:004','Fire','Fire');
    INSERT INTO losscausetype VALUES('lc:005','Waterdamage','Damage by Water Pipelines');
  INSERT INTO losscausetype VALUES('lc:006','Theft','Theft of vehicle');
   INSERT INTO losscausetype VALUES('lc:007','Lightning','Lightning');
  INSERT INTO losscausetype VALUES('lc:008','Hurricane','Hurricane');
   INSERT INTO losscausetype VALUES('lc:009','Vandalism','Vandalism & Malicious Mischeif');
  INSERT INTO losscausetype VALUES('lc:010','Tow','Roadside Assistance');

    ---- Create ClaimStatus Table
   CREATE TABLE claimstatus
(
  claimstatus_id    CHAR(6)     NOT NULL,
  name    VARCHAR(50)     NOT NULL,
  description    VARCHAR(50)     NOT NULL,
  CONSTRAINT pk_claimstatus PRIMARY KEY (claimstatus_id)
  );
  --------Inserting data
  INSERT INTO claimstatus VALUES('cs:001','Draft','Draft');
  INSERT INTO claimstatus VALUES('cs:002','Open','Open');
  INSERT INTO claimstatus VALUES('cs:003','Closed','Closed');
  INSERT INTO claimstatus VALUES('cs:004','Archived','Archived');

  -------------- Create property table
  CREATE TABLE property
(
  property_id    CHAR(6)     NOT NULL,
   location VARCHAR(255)	, 
  rooftype VARCHAR(255),
  numberofstories    INT,
  numberofunits    INT,
  squarefootage    INT,
  constructionyear INT,
  CONSTRAINT pk_property PRIMARY KEY (property_id)
  );
 
 -- Inserting data
  INSERT INTO property VALUES('pr:001','1600 N Sheridan Rd, Waukegan, IL 60085-2112','Asphlt/Fbrgls Or Dimnsl Asphlt','1','5','1500','1989');
  INSERT INTO property VALUES('pr:002','252 E Marguerita Dr, Garland, TX 75040-7926','Wood Shake/Wood Shingle','2','6','1244','1998');
  INSERT INTO property VALUES('pr:003','8519 Lofty Pnes, Richmond, TX 77406-4634','Concrete/Cement-Fiber Tile','1','5','4000','2020');
  INSERT INTO property VALUES('pr:004','117 Honey Creek Ave, Neada, MI 49301-9768','Composition Shingle (Asphalt/Fiberglass)','3','12','6548','1994');
  INSERT INTO property VALUES('pr:005','2517 E Skelly Dr, Tulsa, OK 74105-6007','Composition Roll Roofing','2','4','1785','1970');
  INSERT INTO property VALUES('pr:006','30808 Se Jackson Rd, Gresham, OR 97080-8932','Fiberglass Panel','2','6','1930','1984');
  INSERT INTO property VALUES('pr:007','11203 Ranch Road 2222 Apt 1502, Austin, TX 78730-1024','Wood Shake/Wood Shingle','1','3','1280','2002');
  INSERT INTO property VALUES('pr:008','3814 Mahogany St, West Covina, CA 91792-2787','Asphalt Shingle','2','8','1500','2014');
  INSERT INTO property VALUES('pr:009','3000 Northside Blvd, Richardson, TX, 75080','Wood Shake/Wood Shingle','1','4','1196','2007');
  INSERT INTO property VALUES('pr:010','22122 Erwin St, Woodland Hills, CA, 91367','Synthetic Shingle Or Tile','3','6','1348','2004');
  INSERT INTO property VALUES('pr:012','5004 Norwood Dr, Bettendorf, IA 52722-5830','Asphlt/Fbrgls Or Dimnsl Asphlt','3','9','5600','1996');
  
   ----------- Create Vehicle table
CREATE TABLE vehicle
(
  vehicle_id    CHAR(6)     NOT NULL,
   vehicletype VARCHAR(50)	, 
  vehiclestyle VARCHAR(255),
  vehiclemodel VARCHAR(255),
  vehiclemake VARCHAR(255),
  VIN    VARCHAR(50),
  licenseplate VARCHAR(10),
  licenseyear VARCHAR(4),
  CONSTRAINT pk_vehicle PRIMARY KEY (vehicle_id)
  );
  ---------Inserting data
  INSERT INTO vehicle VALUES('vh:002','Car','Auto','Mercedes Benz','E Class 4D 4Wd 350','4T1BG22K01U021791','127HAX','2018');
  INSERT INTO vehicle VALUES('vh:003','Car','Auto','Ford','Fusion','3FAHP0JG0BR247361','424XYX','2011');
  INSERT INTO vehicle VALUES('vh:004','Box Truck','Auto','Gmc','Terrain 4D 4Wd Slt1','2GKFLVEK5D6243118','375KLG','2013');
  INSERT INTO vehicle VALUES('vh:006','Sedan','Auto','Cadillac','Dts','1G6KD57YX9U131970','987CDM','2009');
  INSERT INTO vehicle VALUES('vh:007','Boat Trailer','Trailer','Forest River','Vibe 308Bhs','4X4TVBG29H4108021','RT42263','2001');
  INSERT INTO vehicle VALUES('vh:008','Sailboat','Watercraft','Blazer Boats','210 Pro-V Extended D','PNS20301D999','2YFM971','1999');
  INSERT INTO vehicle VALUES('vh:009','Yacht','Watercraft','Bertram Yacht','28 Ii Flybridge Cruise','BERF2254D484','4F53592','1984');
  INSERT INTO vehicle VALUES('vh:010','Snowmobile Trailer','Recreation Vehicle','Skidoo','Summit Sp E-Tec 850','2BPSCFHC2HV000849','4KBK176','2017');
  INSERT INTO vehicle VALUES('vh:014','Car','Auto','Volkswagen','Jetta','3VWRJ71KX8M172619','119YGU','2008');
  INSERT INTO vehicle VALUES('vh:015','Car','Auto','Mitsubishi','Eclipse Conv','4A3AL25F08E002072','144PYM','2008');
 
 
 ------------ Create Policy Table
CREATE TABLE policy
(
  policy_id    CHAR(6)     NOT NULL,
  policytype_id    CHAR(6)     ,
  policystatus_id    CHAR(6)     ,
  property_id    CHAR(6)  ,
  vehicle_id    CHAR(6)    ,
  policynumber  VARCHAR(255)             ,
  accountnumber  VARCHAR(255)            ,
  effectivedate DATETIME,
  expirationdate DATETIME,
  CONSTRAINT pk_policy PRIMARY KEY (policy_id),
  CONSTRAINT fk_policy_policytype FOREIGN KEY (policytype_id) REFERENCES policytype(policytype_id),
  CONSTRAINT fk_policy_policystatus FOREIGN KEY (policystatus_id) REFERENCES policystatus(policystatus_id),
  CONSTRAINT fk_policy_property FOREIGN KEY (property_id) REFERENCES property(property_id),
  CONSTRAINT fk_policy_vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
  );

  INSERT INTO policy VALUES('pc:001','pt:004','ps:001','pr:003',NULL,'193970361','4762472641','03-02-2021','03-08-2021');
  INSERT INTO policy VALUES('pc:002','pt:001','ps:001',NULL,'vh:002','705602890','4720553281','04-13-2020','10-13-2020');
  INSERT INTO policy VALUES('pc:003','pt:005','ps:001','pr:008',NULL,'139645436','4760836879','01-26-2021','07-26-2021');
  INSERT INTO policy VALUES('pc:006','pt:001','ps:001',NULL,'vh:009','155130384','4730833641','04-01-2021','04-06-2021');
  INSERT INTO policy VALUES('pc:007','pt:004','ps:002','pr:001',NULL,'183146632','4789243827','01-23-2021','07-23-2021');
  INSERT INTO policy VALUES('pc:008','pt:002','ps:001',NULL,'vh:003','103293256','4767592723','01-23-2021','07-20-2021');
  INSERT INTO policy VALUES('pc:009','pt:005','ps:001','pr:006',NULL,'191425013','4795337888','01-31-2021','07-31-2021');
  INSERT INTO policy VALUES('pc:010','pt:001','ps:001',NULL,'vh:008','601811470','4762538455','02-18-2021','08-18-2021');
  INSERT INTO policy VALUES('pc:011','pt:005','ps:002','pr:010',NULL,'830954806','4716460016','03-03-2020','09-03-2020');

 --- Altering tables to add policy id foreign key to property table
  ALTER TABLE dbo.property ADD policy_id CHAR(6) NULL;
  ALTER TABLE dbo.property WITH NOCHECK ADD CONSTRAINT fk_property_policy
FOREIGN KEY (policy_id) REFERENCES dbo.policy(policy_id);

UPDATE property 
set policy_id ='pc:001' WHERE property_id ='pr:001';
UPDATE property 
set policy_id ='pc:001' WHERE property_id ='pr:003';
UPDATE property 
set policy_id ='pc:009' WHERE property_id ='pr:006';
UPDATE property 
set policy_id ='pc:001' WHERE property_id ='pr:007';


 --- Altering tables to add policy id foreign key to vehicle table
  ALTER TABLE dbo.vehicle ADD policy_id CHAR(6) NULL;
ALTER TABLE dbo.vehicle ADD CONSTRAINT fk_property_vehicle
FOREIGN KEY (policy_id) REFERENCES dbo.policy(policy_id);


UPDATE vehicle
set policy_id ='pc:002' WHERE vehicle_id ='vh:002';
UPDATE vehicle
set policy_id ='pc:006' WHERE vehicle_id ='vh:009';
UPDATE vehicle
set policy_id ='pc:008' WHERE vehicle_id ='vh:003';
UPDATE vehicle
set policy_id ='pc:010' WHERE vehicle_id ='vh:008';

  --------- Create Customer Table
  CREATE TABLE customer
(
  customer_id    CHAR(6)     NOT NULL,
  policy_id CHAR(6),
  firstname VARCHAR(50)				, 
  lastname VARCHAR(50)				,
  middlename VARCHAR(50)			,
  isdriver CHAR(3)					,
  addressline1 VARCHAR(50)			,
  city VARCHAR(50)					,
  state VARCHAR(2)					,
  zipcode VARCHAR(5)			,
  CONSTRAINT pk_customer PRIMARY KEY (customer_id),
  CONSTRAINT fk_customer_policy FOREIGN KEY (policy_id) REFERENCES policy(policy_id),
  );
  
  --- Inserting values into customer
  INSERT INTO customer VALUES('cu:001','pc:003','Amy','Blalock',NULL,'no','3814 Mahogany St','West Covina','CA','91792');
  INSERT INTO customer VALUES('cu:002','pc:009','Todd','Saavedra',NULL,'no','30808 Se Jackson Rd','Gresham','OR','97080');
  INSERT INTO customer VALUES('cu:003',NULL,'Sarah','Hutton','M','yes','600 Red Brook Blvd','Owings Mills','MD','21117');
  INSERT INTO customer VALUES('cu:005','pc:002','Scott','Von Seggern','R','yes','1800 E Imperial Hwy','Austin','TX','76545');
  INSERT INTO customer VALUES('cu:014','pc:007','Cory','Shannon','R','no','1600 N Sheridan Rd','Waukegan','IL','60085');

 
 ----------- create claim table
   CREATE TABLE claim
(
  claim_id    CHAR(6)     NOT NULL,
  losscause_id    CHAR(6)     ,
  policy_id    CHAR(6)    ,
  claimstatus_id    CHAR(6)   ,
  customer_id    CHAR(6)   ,
  lossdate  DATETIME			, 
  claimnumber INT			,
  closedate  DATETIME		,
  closedreason VARCHAR(50)		,
  losslocationzip VARCHAR(255), 
  losslocationstate VARCHAR(2),
  lineofbusiness VARCHAR(10),
  CONSTRAINT pk_claim PRIMARY KEY (claim_id),
  CONSTRAINT fk_claim_losscause FOREIGN KEY (losscause_id) REFERENCES losscausetype(losscause_id),
  CONSTRAINT fk_claim_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  CONSTRAINT fk_claim_policy FOREIGN KEY (policy_id) REFERENCES policy(policy_id),
  CONSTRAINT fk_claim_claimstatus FOREIGN KEY (claimstatus_id) REFERENCES claimstatus(claimstatus_id),
  );
  
  INSERT INTO claim VALUES ('cl:001','lc:001','pc:002','cs:001','cu:005','04-21-2021','203000001',NULL,NULL,'78728','TX','Auto');
 INSERT INTO claim VALUES ('cl:002','lc:003','pc:007','cs:001','cu:014','02-17-2021','203000002',NULL,NULL,'60085','IL','Property');
 INSERT INTO claim VALUES ('cl:008','lc:002','pc:003','cs:001','cu:001','12-02-2021','203000008',NULL,NULL,'91792','CA','Property');
INSERT INTO claim VALUES ('cl:014','lc:007','pc:009','cs:001','cu:002','02-25-2021','203000014',NULL,NULL,'97080','OR','Property');

 
  --- Creating association table
CREATE TABLE association_policy_customer
(
  policy_id    CHAR(6)  ,
  customer_id    CHAR(6)    ,
  CONSTRAINT pk_association_policy_customer PRIMARY KEY (policy_id,customer_id),
  CONSTRAINT fk_policy FOREIGN KEY(policy_id) REFERENCES policy (policy_id),
  CONSTRAINT fk_customer FOREIGN KEY(customer_id) REFERENCES customer (customer_id)
    );
  
CREATE TABLE association_claim_customer
(
  claim_id    CHAR(6)   ,
  customer_id    CHAR(6)    ,
  CONSTRAINT pk_association_claim_customer PRIMARY KEY (claim_id,customer_id),
  CONSTRAINT fk_claim FOREIGN KEY(claim_id) REFERENCES claim (claim_id),
  CONSTRAINT fk_customer_1 FOREIGN KEY(customer_id) REFERENCES customer (customer_id)
    );
  
 
  --- Altering tables to add claim id foreign key to customer table
  ALTER TABLE dbo.customer ADD claim_id CHAR(6) NULL ;
ALTER TABLE dbo.customer ADD CONSTRAINT fk_customer_claim
FOREIGN KEY (claim_id) REFERENCES dbo.claim(claim_id);

UPDATE customer
set claim_id ='cl:008' WHERE customer_id ='cu:001';
UPDATE customer
set claim_id ='cl:014' WHERE customer_id ='cu:002';
UPDATE customer
set claim_id ='cl:001' WHERE customer_id ='cu:005';
UPDATE customer
set claim_id ='cl:002' WHERE customer_id ='cu:014';

--- Altering tables to add claim id foreign key to policy table
  ALTER TABLE dbo.policy ADD claim_id CHAR(6) NULL;
ALTER TABLE dbo.policy ADD CONSTRAINT fk_policy_claim
FOREIGN KEY (claim_id) REFERENCES dbo.claim(claim_id);

UPDATE policy
set claim_id ='cl:001' WHERE policy_id ='pc:002';
UPDATE policy
set claim_id ='cl:002' WHERE policy_id ='pc:007';
UPDATE policy
set claim_id ='cl:008' WHERE policy_id ='pc:003';
UPDATE policy
set claim_id ='cl:014' WHERE policy_id ='pc:009';


--- Altering tables to add customer id foreign key to policy table
  ALTER TABLE dbo.policy ADD customer_id CHAR(6) NULL;
ALTER TABLE dbo.policy WITH NOCHECK ADD CONSTRAINT fk_policy_customer
FOREIGN KEY (customer_id) REFERENCES dbo.customer(customer_id);
 
 UPDATE policy
set customer_id ='cu:001' WHERE policy_id ='pc:003';
 UPDATE policy
set customer_id ='cu:002' WHERE policy_id ='pc:009';
UPDATE policy
set customer_id ='cu:005' WHERE policy_id ='pc:002';
UPDATE policy
set customer_id ='cu:014' WHERE policy_id ='pc:007';


 INSERT INTO claim VALUES ('cl:009','lc:004','pc:002','cs:001','cu:005','04-21-2021','203000008',NULL,NULL,'78728','TX','Auto');
 INSERT INTO association_claim_customer VALUES ('cl:008','cu:001')
 INSERT INTO association_claim_customer VALUES ('cl:014','cu:002')
INSERT INTO association_claim_customer VALUES ('cl:002','cu:014')
INSERT INTO association_claim_customer VALUES ('cl:001','cu:005')

INSERT INTO association_policy_customer VALUES('pc:002','cu:005')
INSERT INTO association_policy_customer VALUES('pc:003','cu:001')
INSERT INTO association_policy_customer VALUES('pc:007','cu:014')
INSERT INTO association_policy_customer VALUES('pc:009','cu:002')

select * from association_claim_customer;

select * from association_policy_customer;

---Data in customer table
select* from customer;


---Data in policy table
select * from policy;

--- Data in property table
select * from property;

--- Data in Vehicle table
select * from vehicle;

--- Data in claim table
select * from claim;

--- Data in policy status table
select * from policystatus;

--- Data in policy Type table
select * from policytype;

--- Data in Loss Cause Type table
select * from losscausetype;

--- Data in Claim Status table
select * from claimstatus;

  select * from policy;
  select * from vehicle;
 -------- INNER JOIN on policy and vehicle-- Which vehicles have policy ID
 select * from policy;
select e1.policy_id, e2.vehicle_id
from policy e1
inner join vehicle e2
on e1.policy_id=e2.policy_id;

----- FULL OUTER-- Between claim and policy
select e1.policy_id , e2.claim_id,e1.policynumber, e1.policytype_id
from policy e1
FULL OUTER JOIN claim e2
on e1.policy_id=e2.policy_id;


-- Policies which are used or not used by vehicles(LEFT OUTER JOIN)
select * from policytype;
select e2.policy_id , e1.policytype_id,e1.name, e2.policynumber,e2.effectivedate,e2.property_id
from policytype e1
left outer join policy e2
on e1.policytype_id=e2.policytype_id where e1.policytype_id='pt:004';

--- RIGHT JOIN is testing all the claims associated to customer
select e1.claim_id , e2.customer_id, e2.firstname, e1.claimnumber, e1.lineofbusiness
from claim e1
right OUTER join customer e2
on e1.claim_id=e2.claim_id;

-- Intersect
select policy_id from policy;
select e1.policy_id
FROM policy e1
INTERSECT 
Select e2.policy_id from property e2;

----- FULL OUTER
Select t.policy_id, ts.customer_id,s.firstname, s.lastname
FROM policy t
FULL JOIN association_policy_customer ts
ON t.policy_id = ts.policy_id
JOIN customer s
ON s.customer_id = ts.customer_id AND t.policy_id = ts.policy_id
ORDER BY t.policy_id;

--- Union
select zipcode, customer_id from customer;
select losslocationzip, customer_id from claim;
Select t.zipcode,t.customer_id
from customer t
UNION 
Select c.losslocationzip,c.customer_id
from claim c;


-- Except
select policy_id,claim_id from policy 
EXCEPT 
select policy_id,claim_id from claim 


