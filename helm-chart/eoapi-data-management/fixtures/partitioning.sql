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
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-olci-l1-efr';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-olci-l1-err';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-olci-l2-lfr';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-olci-l2-lrr';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-slstr-l1-rbt';
UPDATE collections set partition_trunc='month' WHERE id='sentinel-3-slstr-l2-lst';

COMMIT;