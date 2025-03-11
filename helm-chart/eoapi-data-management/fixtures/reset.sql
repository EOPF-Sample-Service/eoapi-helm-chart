-- 
-- Delete existing items and collections
--
SET search_path = pgstac, public;
DELETE FROM items WHERE collection='sentinel-2-l1c';
DELETE FROM items WHERE collection='sentinel-2-l2a';
DELETE FROM collections WHERE id='sentinel-2-l1c';
DELETE FROM collections WHERE id='sentinel-2-l2a';