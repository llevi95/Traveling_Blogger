DROP TABLE  dilan
CREATE TABLE dilan
  (sorszam FLOAT,
  ido DATE,
   tipus TEXT,
   orszag TEXT,
   id FLOAT,
   platform TEXT,
   kontinens TEXT,
   Ár FLOAT);
COPY dilan FROM '/home/levi/Dilan/newdata.csv' WITH CSV HEADER DELIMITER',';
COMMIT;
SELECT * FROM dilan LIMIT 50
SELECT tipus, orszag, count(id) FROM dilan GROUP BY tipus, orszag
