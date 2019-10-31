CREATE TRIGGER insert_subscriber
    AFTER INSERT ON subscribers
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Subscriber inserted: ', id),
     table_affected = 'subscribers',
     time = NOW();

CREATE TRIGGER delete_subscriber 
    BEFORE DELETE ON subscribers
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Subscriber deleted: ', id),
     table_affected = 'subscribers',
     time = NOW();


CREATE TRIGGER update_subscriber 
    AFTER UPDATE ON subscribers
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Subscriber updated: ', id),
     table_affected = 'subscribers',
     time = NOW();