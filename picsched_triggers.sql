CREATE TRIGGER insert_picsched
    AFTER INSERT ON pictorial_schedule
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Pictorial Sched inserted: ', id),
     table_affected = 'pictorial_schedule',
     time = NOW();

CREATE TRIGGER delete_picsched
    BEFORE DELETE ON pictorial_schedule
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Pictorial Sched inserted: ', id),
     table_affected = 'pictorial_schedule',
     time = NOW();


CREATE TRIGGER update_picsched
    AFTER UPDATE ON pictorial_schedule
    FOR EACH ROW 
 INSERT INTO audit_log
 SET action = CONCAT('Pictorial Sched inserted: ', id),
     table_affected = 'pictorial_schedule',
     time = NOW();