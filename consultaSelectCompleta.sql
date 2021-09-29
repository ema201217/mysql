

SELECT states.name AS Estado,  /* Hacemos una consulta del nombre del estado */
permissions.name AS Permisos,   /* Hacemos una consulta del nombre del permiso */
notes.title AS "Titulo de nota",   /* Hacemos una consulta del titulo que tiene la nota */
categories.name AS Categoria,  /* Hacemos una consulta del nombre de la categoria */
users.name AS Usuario  /* Hacemos una consulta del nombre del usuario */

/* Cruzamos datos entre la tabla states y la tabla notes */
FROM states
INNER JOIN notes ON notes.state_id = states.id 

/* Cruzamos datos entre la tabla pivot note_permission y la tabla notas */
INNER JOIN note_permission ON note_permission.note_id =notes.id 

/* Cruzamos datos entre la tabla permisos y la tabla pivot note_permission */
INNER JOIN permissions ON permissions.id = note_permission.permission_id 

/* Cruzamos datos entre la tabla pivot category_note y la tabla notes */
INNER JOIN category_note ON category_note.note_id = notes.id 

/* Cruzamos datos entre la tabla categories y la tabla pivot category_note */
INNER JOIN categories ON categories.id = category_note.category_id 

/* Cruzamos datos entre la tabla users y la tabla notes */
INNER JOIN users ON users.id = notes.user_id 