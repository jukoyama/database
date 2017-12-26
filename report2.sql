DROP TABLE maptbl;
DROP TABLE usertbl;
DROP TABLE picturetbl;
DROP TABLE liketbl;
DROP TABLE viewtbl;


CREATE TABLE maptbl(map_name TEXT, picture BLOB,
       PRIMARY KEY(map_name));

CREATE TABLE usertbl(user_name TEXT, picture BLOB,
       PRIMARY KEY(user_name));

CREATE TABLE picturetbl(title_name TEXT, like TEXT, lat REAL, long REAL, comment TEXT, tag_name TEXT, map_name TEXT,
                        user_name TEXT,
       PRIMARY KEY(title_name),
       FOREIGN KEY(map_name) REFERENCES maptbl(map_name),
       FOREIGN KEY(user_name) REFERENCES usertbl(user_name));

CREATE TABLE liketbl(user_name TEXT, title_name TEXT,
       PRIMARY KEY(user_name, title_name),
       FOREIGN KEY(user_name) REFERENCES usertbl(user_name),
       FOREIGN KEY(title_name) REFERENCES titletbl(title_name) );

CREATE TABLE viewtbl(map_name TEXT, user_name TEXT,
      PRIMARY KEY(map_name, user_name),
      FOREIGN KEY(map_name) REFERENCES mapatbl(map_name),
      FOREIGN KEY(user_name) REFERENCES usertbl(user_name));
