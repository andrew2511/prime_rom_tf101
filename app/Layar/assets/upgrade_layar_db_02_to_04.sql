ALTER TABLE favorite_layers ADD COLUMN subsection TEXT DEFAULT 'favorites' NOT NULL;
DROP INDEX IF EXISTS favorite_layers_name;
CREATE INDEX IF NOT EXISTS favorite_layers_name ON favorite_layers (name, subsection);

ALTER TABLE layers ADD COLUMN link_url TEXT DEFAULT 'no link';
ALTER TABLE layers ADD COLUMN publishingDate NUMERIC DEFAULT 0;
UPDATE favorite_layers SET orderNo = favorite_layers._id;

DROP TABLE IF EXISTS stream_poi;
DROP TABLE IF EXISTS items;