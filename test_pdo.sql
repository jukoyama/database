DROP TABLE subject;
DROP TABLE teacher;
DROP TABLE lecture;

CREATE  TABLE  subject(name  TEXT  PRIMARY  KEY);	
CREATE  TABLE  teacher(name  TEXT  PRIMARY  KEY);	
CREATE  TABLE  lecture(s_name  TEXT,  t_name  TEXT,  year  INTEGER,  	
                PRIMARY  KEY(s_name,  t_name),	
                FOREIGN  KEY(s_name)  REFERENCES  subject(name),	
                FOREIGN  KEY(t_name)  REFERENCES  teacher(name));