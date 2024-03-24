CREATE TABLE todo
(
    id          SERIAL PRIMARY KEY,
    title       TEXT,
    importance  INTEGER,
    urgency     INTEGER,
    deadline    DATE,
    done        TEXT
);

INSERT INTO todo(title,importance,urgency,deadline,done) 
VALUES('toso-1',0,0,'2020-10-01','N');
INSERT INTO todo(title,importance,urgency,deadline,done) 
VALUES('toso-2',0,1,'2020-10-02','N');
INSERT INTO todo(title,importance,urgency,deadline,done) 
VALUES('toso-3',1,0,'2020-10-03','N');
INSERT INTO todo(title,importance,urgency,deadline,done) 
VALUES('toso-4',1,1,'2020-10-04','N');