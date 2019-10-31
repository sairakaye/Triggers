CREATE TABLE audit_log (
  log_id INT NOT NULL AUTO_INCREMENT,
  table_affected VARCHAR(45) NOT NULL,
  action VARCHAR(45) NOT NULL,
  time DATETIME NOT NULL,
  PRIMARY KEY (log_id)
 );