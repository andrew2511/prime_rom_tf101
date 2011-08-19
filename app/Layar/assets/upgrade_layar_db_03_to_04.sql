ALTER TABLE layers ADD COLUMN link_url TEXT DEFAULT 'no link';
ALTER TABLE layers ADD COLUMN publishingDate NUMERIC DEFAULT 0;
UPDATE favorite_layers SET orderNo = favorite_layers._id;

DROP TABLE IF EXISTS stream_poi;
DROP TABLE IF EXISTS items;