SELECT table_name, column_name, data_type, data_length, nullable
FROM user_tab_columns;

SELECT table_name, constraint_name, column_name
FROM user_cons_columns
WHERE constraint_name IN (SELECT constraint_name FROM user_constraints WHERE constraint_type = 'P');

SELECT table_name, constraint_name, column_name
FROM user_cons_columns
WHERE constraint_name IN (SELECT constraint_name FROM user_constraints WHERE constraint_type = 'R');

SELECT table_name, column_name, comments
FROM user_col_comments;
