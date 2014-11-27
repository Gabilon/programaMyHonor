SELECT SchemaName = left(S.name, 45),
       TableName = cast(T.name AS VARCHAR(140)),
       ColOrder = C.column_id, --cast(C.column_id as varchar(6)),
       PK = isnull(key_ordinal, ''),
       ColumnName = left(C.name, 100),
       TYPE = left(Y.Name, 10), TipoUsu = left(Y2.Name, 10),
       LENGTH = CASE WHEN max_length = -1 THEN 'Max' ELSE cast(max_length AS VARCHAR(10)) END,
       C.PRECISION, C.Scale, Identi = is_identity, Nulos = C.is_nullable,
       Defaulf = cast(D.DEFINITION AS VARCHAR(10)),
       Collation = cast(C.Collation_name AS VARCHAR(20)), --C.* --, Y.*
       ColumnDescription = cast(P.value AS VARCHAR(500)),
       TableDescription = cast(P2.value AS VARCHAR(500))
FROM (
   SELECT object_id, schema_id, name FROM sys.VIEWS
   UNION ALL
   SELECT object_id, schema_id, name FROM sys.TABLES) T
inner join sys.schemas S ON T.schema_id = S.schema_id
inner join sys.COLUMNS C ON T.object_id = C.object_id
left join sys.systypes Y ON Y.xtype = C.system_type_id AND Y.status = 0
left join sys.systypes Y2 ON Y2.xtype = C.system_type_id AND Y2.status = 1
left join sys.default_constraints D ON D.object_id = C.default_object_id
left join sys.extended_properties P ON P.major_id = T.object_id AND P.minor_id = C.column_Id
left join sys.extended_properties P2 ON P2.major_id = T.object_id AND P2.minor_id = 0
left join (
 SELECT I.object_id, column_id, key_ordinal
 FROM sys.INDEXES I
 inner join sys.index_columns L ON I.object_id = L.object_id AND I.index_id = L.index_id
 inner join sys.key_constraints C ON I.object_id = C.parent_object_id AND I.name = C.name
   WHERE C.TYPE = 'PK'
) I ON I.object_id = T.Object_id AND I.column_id = C.column_id
WHERE T.name <> 'sysdiagrams'