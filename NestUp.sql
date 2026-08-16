PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS sale;
DROP TABLE IF EXISTS offer;
DROP TABLE IF EXISTS viewing;
DROP TABLE IF EXISTS property;
DROP TABLE IF EXISTS buyer;
DROP TABLE IF EXISTS vendor;
DROP TABLE IF EXISTS agent;

CREATE TABLE agent (
    agent_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    contact TEXT NOT NULL,
    commission_rate REAL NOT NULL CHECK(commission_rate >= 0.0 AND commission_rate <= 10.0)
);

CREATE TABLE vendor (
    vendor_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    contact TEXT NOT NULL
);

CREATE TABLE buyer (
    buyer_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    contact TEXT NOT NULL,
    budget INTEGER NOT NULL CHECK(budget > 0),
    preferences TEXT
);

CREATE TABLE property (
    property_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    address TEXT NOT NULL UNIQUE,
    price INTEGER NOT NULL CHECK(price > 0),
    bed_bath TEXT NOT NULL,
    land_size INTEGER NOT NULL CHECK(land_size > 0),
    status TEXT NOT NULL DEFAULT 'Listed' CHECK(status IN ('Listed', 'Under Offer', 'Sold', 'Withdrawn')),
    vendor_id INTEGER NOT NULL,
    agent_id INTEGER NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id) ON DELETE RESTRICT,
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id) ON DELETE RESTRICT
);

CREATE TABLE viewing (
    viewing_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    buyer_id INTEGER NOT NULL,
    date_time TEXT NOT NULL,
    feedback TEXT,
    FOREIGN KEY (property_id) REFERENCES property(property_id) ON DELETE CASCADE,
    FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id) ON DELETE CASCADE
);

CREATE TABLE offer (
    offer_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    property_id INTEGER NOT NULL,
    buyer_id INTEGER NOT NULL,
    amount INTEGER NOT NULL CHECK(amount > 0),
    date TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'Pending' CHECK(status IN ('Pending', 'Accepted', 'Declined')),
    FOREIGN KEY (property_id) REFERENCES property(property_id) ON DELETE RESTRICT,
    FOREIGN KEY (buyer_id) REFERENCES buyer(buyer_id) ON DELETE RESTRICT
);

CREATE TABLE sale (
    sale_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    offer_id INTEGER NOT NULL UNIQUE,
    final_price INTEGER NOT NULL CHECK(final_price > 0),
    date TEXT NOT NULL,
    commission REAL NOT NULL CHECK(commission >= 0.0),
    FOREIGN KEY (offer_id) REFERENCES offer(offer_id) ON DELETE RESTRICT
);