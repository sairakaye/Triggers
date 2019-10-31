CREATE TRIGGER insert_user 
    AFTER INSERT ON user
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('User inserted: ', username),
     table_affected = 'user',
     time = NOW();

CREATE TRIGGER delete_user 
    BEFORE DELETE ON user
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('User deleted: ', old.username),
     table_affected = 'user',
     time = NOW();


CREATE TRIGGER update_user 
    AFTER UPDATE ON user
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('User updated: ', username),
     table_affected = 'user',
     time = NOW();