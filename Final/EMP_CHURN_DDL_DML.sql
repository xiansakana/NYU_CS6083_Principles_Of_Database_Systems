
---- REPLACE jc12300 to your initial

CREATE TABLE   jc12300_emp_churn
(
   GENDER  varchar(10),
   AGE  varchar(10),
   INCOME  varchar(10),
   CHURN  varchar(10)
);



INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES 
     ('Female','<50','<100K','NO');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
    ('Female','>50','>100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
   ('Male','<50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
    ('Male','<50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Male','>50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Male','>50','>100K','NO');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Male','<50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Female','<50','<100K','NO');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Female','<50','<100K','NO');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Male','<50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Female','<50','<100K','NO');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Female','>50','<100K','YES');

INSERT INTO   jc12300_emp_churn   
(GENDER,AGE,INCOME,CHURN) VALUES    
('Male','>50','>100K','NO');

COMMIT;



