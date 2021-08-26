select top 20a.index_id, name, avg_fragmentation_in_percent, fragment_count, 
avg_fragment_size_in_pages
from sys.dm_db_index_physical_stats (DB_ID('dbADVENTURE'), NULL, NULL, NULL, NULL) as a
join sys.indexes as b on a.object_id = b.object_id and a.index_id = b.index_id
order by avg_fragmentation_in_percent DESC