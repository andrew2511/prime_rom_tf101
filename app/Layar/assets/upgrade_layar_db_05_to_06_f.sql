DROP TABLE IF EXISTS stream_poi;
DROP TABLE IF EXISTS items;

ALTER TABLE favorite_layers ADD COLUMN subsection TEXT DEFAULT 'favorites' NOT NULL;
DROP INDEX IF EXISTS favorite_layers_name;
CREATE INDEX IF NOT EXISTS favorite_layers_name ON favorite_layers (name, subsection);