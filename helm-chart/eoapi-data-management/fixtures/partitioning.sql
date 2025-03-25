-- 
-- Update the partitioning of the EOPF collections
--
SET search_path = pgstac, public;
BEGIN;
UPDATE collections set partition_trunc='month' WHERE id='sentinel-2-l1c';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-2-l2a';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-1-l1-grd';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-1-l1-slc';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-1-l2-ocn';
COMMIT;