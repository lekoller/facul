ALTER TABLE child_table
ADD CONSTRAINT fk_parent
FOREIGN KEY (parent_id)
REFERENCES parent_table (parent_id)
CHECK ((SELECT status FROM parent_table WHERE parent_id = child_table.parent_id) = 'A');
