-- 
-- Update pgstac settings
--
SET search_path = pgstac, public;
BEGIN;
INSERT INTO pgstac.pgstac_settings (name, value)
    VALUES
        ('context',                  'off'),
        ('context_estimated_count',  '100000'),
        ('context_estimated_cost',   '100000'),
        ('context_stats_ttl',        '1 day'),
        ('update_collection_extent', 'false'),
        ('default_filter_lang',      'cql2-json'),
        ('additional_properties',    'true'),
        ('queue_timeout',            '10 minutes'),
        ('format_cache',             'false'),
        ('readonly',                 'false'),
        ('use_queue',                'false')
    ON CONFLICT ON CONSTRAINT pgstac_settings_pkey DO UPDATE SET value = excluded.value;
COMMIT;
