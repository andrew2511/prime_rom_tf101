/* Layers */
CREATE TABLE IF NOT EXISTS layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  layerType           TEXT NOT NULL,
  title               TEXT,
  publisher           TEXT,
  shortDescription    TEXT,
  detailDescription   TEXT,
  bannerBgColor       INTEGER,
  bannerTxtColor      INTEGER,
  hasBannerIcon       INTEGER,
  innerColor          INTEGER,
  middleColor         INTEGER,
  outerColor          INTEGER,
  spotColor           INTEGER,
  titleColor          INTEGER,
  textColor           INTEGER,
  biwBgColor          INTEGER,
  hasBiwBG            INTEGER,
  status              INTEGER,
  modified            NUMERIC,
  showFilterOnLaunch  INTEGER,
  countryCode         TEXT(3),
  filters             TEXT,
  customCiws          TEXT,
  showTakeMeThere     SHORT,
  replaceFilters      SHORT,
  authRequired        INTEGER,
  authLabel           TEXT,
  authDescription     TEXT,
  authURL             TEXT,
  authParams          TEXT,
  poiDomainURL        TEXT,
  premium_price       TEXT,
  premium_ccy         TEXT,
  premium_purchased   SHORT,
  link_url            TEXT,
  publishingDate      NUMERIC
);
CREATE INDEX IF NOT EXISTS layer_name ON layers (name);
CREATE INDEX IF NOT EXISTS layer_premium_purchased ON layers (premium_purchased);
CREATE INDEX IF NOT EXISTS layer_modified ON layers (modified);

/* Favorite Layers */
CREATE TABLE IF NOT EXISTS favorite_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS favorite_layers_name ON favorite_layers (name, subsection);

/* Featured Layers */
CREATE TABLE IF NOT EXISTS featured_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS featured_layers_name ON featured_layers (name, subsection);

/* Local Layers */
CREATE TABLE IF NOT EXISTS local_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS local_layers_name ON local_layers (name, subsection);

/* Popular Layers */
CREATE TABLE IF NOT EXISTS popular_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS popular_layers_name ON popular_layers (name, subsection);

/* New Layers */
CREATE TABLE IF NOT EXISTS new_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS new_layers_name ON new_layers (name, subsection);

/* Recent Layers */
CREATE TABLE IF NOT EXISTS recent_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  name                TEXT NOT NULL,
  recentDate          NUMERIC NOT NULL,
  recentCount         INTEGER
);
CREATE INDEX IF NOT EXISTS recent_layers_name ON recent_layers (name);

/* Category Layers */
CREATE TABLE IF NOT EXISTS category_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  category            TEXT NOT NULL,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS category_layers_name ON category_layers (category, name, subsection);

/* Group Layers */
CREATE TABLE IF NOT EXISTS group_layers (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  groupid             TEXT NOT NULL,
  name                TEXT NOT NULL,
  orderNo             INTEGER,
  subsection          TEXT DEFAULT NULL
);
CREATE INDEX IF NOT EXISTS group_layers_id ON group_layers (groupid);
CREATE INDEX IF NOT EXISTS group_layers_name ON group_layers (groupid, name);

/* SpotlightPOIs */
DROP INDEX IF EXISTS stream_poi_id;
DROP INDEX IF EXISTS stream_poi_poi_id;
DROP INDEX IF EXISTS stream_poi_layer_name;
DROP INDEX IF EXISTS stream_poi_category;
DROP TABLE IF EXISTS stream_poi;

/* General items */
DROP INDEX IF EXISTS items_id;
DROP INDEX IF EXISTS items_item_type;
DROP INDEX IF EXISTS items_init;
DROP INDEX IF EXISTS items_search;
DROP INDEX IF EXISTS items_favorite;
DROP TABLE IF EXISTS items;

/* Categories */
CREATE TABLE IF NOT EXISTS categories (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  id                  TEXT UNIQUE NOT NULL,
  name                TEXT NOT NULL,
  cnt                 INTEGER DEFAULT 0
);
CREATE INDEX IF NOT EXISTS categories_id ON categories (id);

/* Groups */
CREATE TABLE IF NOT EXISTS groups (
  _id                 INTEGER PRIMARY KEY AUTOINCREMENT,
  id                  TEXT UNIQUE NOT NULL,
  title               TEXT NOT NULL,
  image_url           TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS groups_id ON groups (id);

