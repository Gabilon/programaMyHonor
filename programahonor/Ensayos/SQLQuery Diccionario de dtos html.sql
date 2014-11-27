/*
para systypes and xusertype <= 256)
Creado por Adán Salvador Aguilera Campos
Aguascalientes, Mexico
Basado en gran parte en el trabajo hecho por el Ing. Ely Michael Núñez
26/08/2011
*/
set nocount on
/*
------------------------------------------------------------------------------
 Variables y tablas temporales
*/
declare @dbname sysname 
declare @name   sysname
declare @tabla    sysname
declare @uid    smallint
declare @usuario sysname
declare @fecha nvarchar(11)
declare @cmd      nvarchar(600)
declare @low nvarchar(11)
declare @cont int
declare @total int
set @cont=0
set @total=0

create table #Base
(
      ident    smallint,
      base         sysname
)
----------------------------------------------------------------
/*Del script de diccionario de datos*/

/* Declares for databases variables */
declare @db_name2 sysname
declare @dbid smallint
declare @db_filename nvarchar(520)
declare @db_crdate datetime
declare @db_size nvarchar(20)

/* Declares for databases files variables */
declare @f_name nchar(256)
declare @f_filename nchar(520)
declare @f_size int
declare @f_groupname sysname

/* Declares for tables variables */
declare @id int
declare @table_name sysname
declare @xtype char(2)
declare @crdate datetime
declare @refdate datetime


-----------------------PRUEBA para syscolumns--------

create table #pk (
      TABLE_QUALIFIER varchar(100),
      TABLE_OWNER varchar(100),
      TABLE_NAME varchar(100),
      COLUMN_NAME varchar(100),
      KEY_SEQ smallint,
      PK_NAME varchar(100)
)

create table #columnas(TABLE_QUALIFIER   sysname     ,
      TABLE_OWNER sysname     ,
      TABLE_NAME  sysname     ,
      COLUMN_NAME sysname     ,
      DATA_TYPE   smallint    ,
      TYPO  varchar(100)      ,
      PREC  int   ,
      LENGTH      int   ,
      SCALE smallint    ,
      RADIX smallint    ,
      NULLABLE    smallint    ,
      REMARKS     varchar(254)      ,
      COLUMN_DEF  nvarchar(3000)    ,
      SQL_DATA_TYPE     smallint    ,
      SQL_DATETIME_SUB  smallint    ,
      CHAR_OCTET_LENGTH int   ,
      ORDINAL_POSITION int   ,
      IS_NULLABLE varchar(254)      ,
      SS_DATA_TYPE      tinyint    
)
/*select column_name,typo, column_def,length,is_nullable,column_name
into @column_name, @column_type, @cdefault, @prec, @isnullable, @pk
*/----------------------------------------------------------

/* Declares for columns variables*/
declare @llave sysname
declare @column_name sysname
declare @column_type varchar(13)
declare @cdefault nvarchar(3000)
declare @prec int
declare @isnullable varchar(254)
declare @nulo as varchar(3)
declare @pk sysname


------------------------------------------------------------------------------
/* Dado que se tienen que extraer datos de dos tablas diferentes se tiene
** que requerir al uso de tablas temporales para crear las descripciones
*
*/
/*
**  Se crea #Base a partir de sysdatabases
    para identificar las bases de datos registradas en el servidor y se descartan
    las que son de SQL Server
*/
insert into #Base (base, ident )
      select name, dbid
            from master.dbo.sysdatabases
            where (@dbname is null or name = @dbname)
                  AND name<> 'master' AND name<> 'tempdb'
                  AND name<> 'model' AND name<> 'msdb'
                  AND name<> 'pubs' AND name<> 'Northwind'


/*
** Se busca cuales bases están accesibles para el usuario
** y las que no las elimina de #Base
*/

declare ms_crs_c1 cursor for
      select db_name (ident) from #Base
open ms_crs_c1
fetch ms_crs_c1 into @name
while @@fetch_status >= 0
begin
      if (has_dbaccess(@name) <> 1)
      begin
            delete #Base where current of ms_crs_c1
            raiserror(15622,-1,-1, @name)
      end
      fetch ms_crs_c1 into @name
end
deallocate ms_crs_c1
/*
**  Se utiliza @curdbid para recorrer los identificadores de BD
**  en #Base para construir las otras dos tablas temporales, se construyen sus caracteristicas
**  @ErrorSave1 se utiliza para manejar errores
*/
print '<html>'
print '<head><title>'
print '           Diccionario de Datos'
print '</title>'
print '<style type="text/css">'
print '<!--'
print '           .style5 {color: #CCCCCC; font-weight: bold; }'
print '           .style6 {color: #0000CC}'
print '           .style7 {color: #000066}'
print '-->'
print '</style>'
print '</head>'
print '<body>'
print '     <table>                
            <tr>       
                  <td colspan="7">
                        <h1><strong><span class="style7">Servidor: </span>' + @@servername + '</strong></h1>
                  </td>
            </tr>
      </table>'


declare @curdbid smallint   
select @curdbid = min(ident) from #Base
while @curdbid IS NOT NULL
begin
      set @name = db_name(@curdbid)
      select @db_name2 = name, @dbid = dbid, @db_filename = filename, @db_crdate = crdate
      from master..sysdatabases where dbid = db_id(@name)
      select @low = convert(varchar(11),low) from master.dbo.spt_values
                  where type = N'E' and number = 1

      select @cmd = '(select str(convert(dec(15),sum(size))* ' + @low + '/ 1048576,10,2)+ N'' MB'' from '
            + quotename(@name, N'[') + N'.dbo.sysfiles)'
      /*set @cmd= '@db_size = (select str(convert(dec(15),sum(size))* ' + @low + '/ 1048576,10,2)+ N'' MB'' from '
                                               + quotename(@name, N'[') + N'.dbo.sysfiles) '
      */   
      print '     <div>'
      print '           <hr noshade="noshade"/>'    
      print '           <table >'        
      print '                 <tr>
                        <td colspan="7"><strong><span class="style7">Nombre de Base de Datos: </span></strong>' + @name
      print '                      </td>
                  </tr>'
      print '                 <tr>
                        <td colspan="7"><strong><span class="style7">Ruta del archivo: </span></strong>' + @db_filename
      print '                      </td>
                  </tr>'
      print '                 <tr>
                        <td colspan="7"><strong><span class="style7">Fecha de creación: </span></strong>' + convert(varchar,@db_crdate)
      print '                      </td>
                  </tr>'     
      print '                 <tr>
                        <td colspan="7"><strong><span class="style7">Tamaño: </span></strong>' 
      exec (@cmd)
      print '                      </td>
                  </tr>
                  '    


      select @cmd= 'Use "' + @name + '"'+char(13)+' 
      declare files_cursor cursor for         
      select name, filename, isnull((select groupname from sysfilegroups b where b.groupid = a.groupid),''N/A'')
            from sysfiles a'
      exec (@cmd)

     

      open files_cursor
      fetch next from files_cursor
            into @f_name, @f_filename, @f_groupname
      print '                 <tr>
                        <td colspan="7">
                             <ul>'

      while @@fetch_status = 0
      begin
     
            print '                                  <li>
                                         <b>' + @f_name + '</b>
                                         <br/>
                                         - Archivo: ' + @f_filename + '<br/>                 
                                         - Tipo: ' + @f_groupname + '
                                   </li>'
     
            fetch next from files_cursor
            into @f_name, @f_filename,  @f_groupname
     
      end
      print '                            </ul>
                        </td>
                  </tr>
            </table>
            <hr />'
      print '     </div>'
     
     
      close files_cursor
      deallocate files_cursor
     
      select @cmd= 'Use "' + @name + '"'+char(13)+'       
            declare table_cursor cursor for
            select id, name, xtype, crdate, refdate from sysobjects where xtype = ''u''
      '
      exec(@cmd)
      open table_cursor
     
      fetch next from table_cursor
            into @id, @table_name, @xtype, @crdate, @refdate
     
      while @@fetch_status = 0
      begin
            set @cont=@cont +1
           

            select @cmd= 'Use "' + @name + '"'+char(13)+'       
                  declare total_cr cursor for
                  select count(*) from sysobjects where xtype = ''u''
            '
            exec(@cmd)
           

            open total_cr
           
            fetch next from total_cr
                  into @total
           
            while @@fetch_status = 0
            begin
                 
                  fetch next from total_cr
                        into @total
            end
            close total_cr
            deallocate total_cr
            print '     <div style="margin-left:5%;">
            <table >
                  <tr>'
                  If (@cont>1)
                  begin
                        print '<br/>'
                  end
                  print
                  '
                        <td>
                        </td>
                        <td colspan="1" style="border:1px solid black">
                             <b>Tabla</b> '+ convert(varchar,@cont) + ' de ' + convert(varchar,@total) +'
                        </td>
                        <td colspan="1" style="border:1px solid black">
                             <b>B.D. </b>'+ @name + '
                        </td>                 
                        <td colspan="4" style="border:1px solid black">     
                             <span class="style6">Fecha de creación: ' + convert(varchar,@crdate) + '</span>
                        </td>
                  </tr>
                  <tr>
                        <td>
                        </td>
                        <td colspan="6" style="font-weight:bold; font-size: 16px; border:1px solid black">
                              Nombre de tabla: ' + @table_name + '
                        </td>                 
                  </tr>
            </table>'
            print '           <table cellpadding="2" cellspacing="0">'-- bordercolor="#CCCCCC">'

            print '                 <tr>'-- bordercolor="#0066CC">'
/*          print '     <tr bordercolor="#0066CC" bgcolor="#cc9300">'
*/
            print '           <td style="border:none">
                        </td>                 
                        <td bgcolor="#0066CC"><span class="style5">Nombre de campo</span></td>'
            print '                      <td bgcolor="#0066CC"><span class="style5">Llave primaria </span></td>'
            print '                      <td bgcolor="#0066CC"><span class="style5">Tipo de columna</span></td>'
            print '                      <td bgcolor="#0066CC"><span class="style5">Valor por Default</span></td>'
            print '                      <td bgcolor="#0066CC"><span class="style5">Longitud</span></td>'
            print '                      <td bgcolor="#0066CC"><span class="style5">Valores nulos</span></td>'
            print '                </tr>'
           
            select @cmd= ' delete #columnas Use "' + @name + '"'+char(13)+'
                  insert into #columnas EXEC sp_columns "'+ @table_name +'"'
            EXEC (@cmd)
     
            Select @cmd = 'delete #pk Use "' + @name + '"'+char(13)+'
                  exec sp_pkeys "'+ @table_name +'"'
            insert into #pk exec(@cmd)

     
            select @cmd= 'update #columnas set REMARKS= '''' '
            exec (@cmd)
           
            select @cmd= 'Use "' + @name + '"'+char(13)+'
                  declare llaves cursor for
                        select column_name
                        from #pk'        
            exec (@cmd)
            open llaves
            fetch next from llaves
                  into @llave
            while @@fetch_status = 0
            begin                                         
                  select @cmd= 'update #columnas set remarks= ''X'' where column_name= ''' + @llave  + ''''
                  exec (@cmd)
                  fetch next from llaves
                        into @llave
            end        
            close llaves
            deallocate llaves
           

           
            select @cmd= 'Use "' + @name + '"'+char(13)+'
                  declare columns_cursor cursor for
                        select column_name,typo, isnull(column_def,'' ''),length,is_nullable,remarks
                        from #columnas'        
            exec (@cmd)      
            open columns_cursor
            fetch next from columns_cursor
                  into @column_name, @column_type, @cdefault, @prec, @isnullable, @pk
           

            /*select @cmd= 'Use "' + @name + '"'+char(13)+'
                  declare columns_cursor cursor for
                        select name, type = (select top 1 name from systypes b where b.xtype = a.xtype and b.xusertype = a.xusertype),
                             cdefault, isnull(prec,0) as prec, isnullable,
                             pk = isnull((select top 1 ''PK'' from sysobjects where xtype = ''u'' and parent_obj = id),''No tiene'')
                        from syscolumns a where id = ' + convert(varchar,@id)
                 
           
            exec (@cmd)
            open columns_cursor
     
            fetch next from columns_cursor
                  into @column_name, @column_type, @cdefault, @prec, @isnullable, @pk
      */
            while @@fetch_status = 0
            begin      
                  print '                 <tr>
                        <td>
                        </td>'
                  print '                      <td style="border:1px solid black;">'+ @column_name +  '</td>'
                  print '                      <td style="text-align:center; border:1px solid black;">' + @pk + '</td>'
                  print '                      <td style="border:1px solid black">' + isnull(@column_type,'varchar') + '</td>'
                  print '                      <td style="text-align:center; border:1px solid black;">' + convert(varchar,@cdefault) + '</td>'
                  print '                      <td style="text-align:center; border:1px solid black;">' + convert(varchar,@prec) + '</td>'
                  print '                      <td style="text-align:center; border:1px solid black;">' + @isnullable + '</td>'
                  print '                 </tr>'
                  /*if (@isnullable=0)
                  begin
                        set @nulo='No'
                  end
                  if (@isnullable=1)
                  begin
                        set @nulo='Si'
                  end
*/
                 
                 
                  fetch next from columns_cursor
                        into @column_name, @column_type, @cdefault, @prec, @isnullable, @pk
           
            end
     
            print '           <tr style="border:none">
                        </tr>
                        </table>'
            print '     </div>'
     
            close columns_cursor
            deallocate columns_cursor
      /**/
            fetch next from table_cursor
                  into @id, @table_name, @xtype, @crdate, @refdate
     
      end
      close table_cursor
      deallocate table_cursor

----------------------------------------------------------
      /*
      ** Buscamos el siguiente identificador de BD
      */set @cont=0
      select @curdbid = min(ident) from #Base where ident > @curdbid
end
print '     </body>'
print '</html>'

/* obtener el resultado
-----------------------------------------------------------------
select base, nombre, usuario, num_filas, fecha
from #resul
order by base, nombre
-----------------------------------------------------------------
*/

drop table #base
drop table #columnas
drop table #pk