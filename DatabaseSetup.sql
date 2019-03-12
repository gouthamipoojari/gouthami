CREATE TABLE Login(
    -> ID VARCHAR(225) NOT NULL,
    -> Email VARCHAR(225) NOT NULL PRIMARY KEY
    -> );


CREATE TABLE LoginValues (ValueID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Inclusion INT NOT NULL, Mettle INT NOT NULL, Pioneering INT NOT NULL, Accountability INT NOT NULL, Collaboration INT NOT NULL, Trust INT NOT NULL, Totalscore INT NOT NULL, Sectionscore INT NOT NULL, Email VARCHAR(255) NOT NULL, mysql> CREATE TABLE LoginValues (ValueIDULL AUTO_INCREMENT PRIMARY KEY, Inclusion INT NOT NULL, Mettle INT NOT NULL, Pioneering INT NOT NULL, Accountability INT NOT NULL, Collaboration INT NOT NULL, Trust INT NOT NULL, Totalscore INT NOT NULL, Sectionscore INT NOT NULL, Email VARCHAR(255) NOT NULL, FOREIGN KEY (Email) REFERENCES Login(Email) );



CREATE TABLE OrganisationActivities( OrgId int NOT NULL AUTO_INCREMENT PRIMARY KEY, Score int NOT NULL, Email varchar(225) NOT NULL, FOREIGN KEY (Email) REFERENCES Login (Email) );


CREATE TABLE ProjectLists( Pname VARCHAR(255) NOT NULL, ClientName VARCHAR(255) NOT NULL ,KeysValue VARCHAR(255) NOT NULL, Ratings INT NOT NULL, PRIMARY KEY (Pname) );

CREATE TABLE Person(
    -> PId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -> Name varchar(225) NOT NULL,
    -> Email varchar(225) NOT NULL
    -> );

CREATE TABLE Project( ProjectId int NOT NULL AUTO_INCREMENT PRIMARY KEY, IndividualScore int NOT NULL, Duration int NOT NULL, Email varchar(225) NOT NULL,  PId INT NOT NULL, Pname varchar(255) NOT NULL, FOREIGN KEY (Email) REFERENCES Login (Email),  FOREIGN KEY (PId) REFERENCES Person (PId), FOREIGN KEY (Pname) REFERENCES ProjectLists (Pname)  );




