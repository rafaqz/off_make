Update ${new_instance_name}.taxonomy_term_data td1 
INNER JOIN ${current_instance_name}.taxonomy_vocabulary v2 ON v2.vid = td1.vid 
INNER JOIN ${new_instance_name}.taxonomy_vocabulary v1 ON v1.machine_name = v2.machine_name 
Set td1.vid = v1.vid;

UPDATE ${new_instance_name}.flagging fg1 
INNER JOIN ${current_instance_name}.flag f2 ON f2.fid = fg1.fid 
INNER JOIN ${new_instance_name}.flag f1 ON f1.name = f2.name 
Set fg1.fid = f1.fid;

UPDATE ${new_instance_name}.flag_types ft1 
INNER JOIN ${current_instance_name}.flag f2 ON f2.fid = ft1.fid 
INNER JOIN ${new_instance_name}.flag f1 ON f1.name = f2.name 
Set ft1.fid = f1.fid;

UPDATE ${new_instance_name}.flag_counts fc1 
INNER JOIN ${current_instance_name}.flag f2 ON f2.fid = fc1.fid 
INNER JOIN ${new_instance_name}.flag f1 ON f1.name = f2.name 
Set fc1.fid = f1.fid;

INSERT INTO ${new_instance_name}.menu_links SELECT * FROM ${current_instance_name}.menu_links ml2 WHERE ml2.menu_name LIKE 'book%';
