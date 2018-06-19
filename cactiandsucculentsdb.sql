DROP TABLE IF EXISTS memberscomments;
DROP TABLE IF EXISTS guestscomments;
DROP TABLE IF EXISTS admins;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS plants;
CREATE TABLE plants (
	pid VARCHAR (10) PRIMARY KEY,
	name VARCHAR (50) NOT NULL,
	type VARCHAR (50) NOT NULL,
	native VARCHAR (50) NOT NULL,
	category VARCHAR (50) NOT NULL,
	scientificname VARCHAR (50) NOT NULL,
	alsoknownas VARCHAR (50) NOT NULL,
	colors VARCHAR (100) NOT NULL,
	howtogrow VARCHAR (255) NOT NULL,
	image VARCHAR (50) NOT NULL
);

INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-001", "Christmas Cactus", "Cactus", "Brazil", "Indoor Type", "Schlumbergera Bridgesii", "Thanksgiving Cactus", "Red, Purple, Orange, Pink & Cream", "Through cuttings", ".\photos\christmascactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-002", "Easter Cactus", "Cactus", "Eastern Brazil", "Indoor Type", "Rhipsalidopsis Gaertnerii", "Whitsun Cactus", "Red, Orange, Peach, Lavander & Pink", "Through Re-Potting", ".\photos\eastercactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-003", "Desert Cactus", "Cactus", "Arizona", "Indoor Type", "Carnegia Gigantia", "Cacti of Arizona", "Deep Magenta, Cream-Colored Blossoms, Bright Yellow Prickly Pear & Pink Blooms", "Through Re-Potting", ".\photos\desertcactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-004", "Golden Barrel Cactus", "Cactus", "Brazil", "Outdoor Type", "Echinocactus Grusonii", "mother-in-law's Cushion", "Vertival Yello Ribs that Line its Edges", "Through seedlings & Re-Potting", ".\photos\goldenbarrelcactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-005", "Columnar Cactus", "Cactus", "Eastern Brazil", "Outdoor Type", "Cereus hexagonus", "Slender Candle", "Exotic Blue Skin Color & Green", "Through Cuttings", ".\photos\columnarcactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-006", "Prickly Pear Cactus", "Cactus", "Arizona", "Outdoor Type", "Opuntia streptacantha", "Tuna Fruit", "Yellow, Red & Purple Blooms", "Through Cuttings", ".\photos\pricklypearcactus.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-007", "Burro’s Tail", "Succulents", "South Mexico", "Indoor Type", "Sedum Morganianum", "Donkey Tail Plant", "Blue-Green Leaves and Terminal Pink to Red Blooms", "Through Cuttings", ".\photos\burrostail.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-008", "Crown of Thorns", "Succulents", "Latin America", "Indoor Type", "Euphorbia Milii", "Christ thorn", "Red Bracts, Pink, Yellow or Whitish Varieties", "Through Cuttings", ".\photos\crownofthorns.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-009", "Flaming Katy", "Succulents", "Madagascar", "Indoor Type", "Kalanchoe Blossfeldiana", "Christmas kalanchoe", "Red, Yellow, Lilac & Orange", "Through Seedlings", ".\photos\flamingkaty.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-010", "Hens-and-Chicks", "Succulents", "Southern Europe and Northern Africa", "Outdoor Type", "Sempervivum Tectorum", "Houseleeks", "Bright Green & Maroon", "Through Seedlings", ".\photos\hensandchicks.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-011", "Pig’s Ear", "Succulents", "Pennsylvania", "Outdoor Type", "Cotyledon Orbiculata", "Pig’s Ear", "Red & Orange Blooms", "Through Cuttings", ".\photos\pigsear.jpg" );
INSERT INTO plants ( pid, name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image )
VALUES ( "000-012", "Zwartkop", "Succulents", "Canary Islands", "Outdoor Type", "Aeonium Arboreum", "Black Beauty", "Deep Marron", "Through Cuttings", ".\photos\zwartkop.jpg" );

CREATE TABLE members (
	memid VARCHAR (10) PRIMARY KEY,
	name VARCHAR (50) NOT NULL,
	country VARCHAR (50) NOT NULL
);

INSERT INTO members ( memid, name, country ) VALUES ( "00-00-01", "Lawrence Nathan", "Philippines" );
INSERT INTO members ( memid, name, country ) VALUES ( "00-00-02", "Akihiro Morinaga", "Japan" );
INSERT INTO members ( memid, name, country ) VALUES ( "00-00-03", "Steven Melby", "Arizona" );

CREATE TABLE memberscomments (
	mid INTEGER (10) PRIMARY KEY AUTO_INCREMENT,
	message VARCHAR (255) NOT NULL,
	memid VARCHAR (10),
	pid VARCHAR (10),
	FOREIGN KEY (memid) REFERENCES members(memid),
	FOREIGN KEY (pid) REFERENCES plants(pid)
);

INSERT INTO memberscomments ( message, memid, pid )
VALUES ( "Please help to open access on video entitled How to Plant Flaming Katy, my memid is 00-00-01, thank you.", "00-00-01", "000-001" );
INSERT INTO memberscomments ( message, memid, pid )
VALUES ( "Please help to open access on video entitled How to Plant Pig's Ear, my memid is 00-00-02. I need it this week, thank you.", "00-00-02", "000-002" );
INSERT INTO memberscomments ( message, memid, pid ) VALUES ( "Please help to open access on video entitled How to Plant Crown of Thorns, my memid is 00-00-03.", "00-00-03", "000-003" );

CREATE TABLE guestscomments (
	gid INTEGER (10) PRIMARY KEY AUTO_INCREMENT,
	message VARCHAR (255) NOT NULL,
	date VARCHAR (50),
	pid VARCHAR (10),
	FOREIGN KEY (pid) REFERENCES plants(pid)
);

INSERT INTO guestscomments ( message, date, pid ) VALUES ( "Please help to send photo Flaming Katy in a pot, thank you", "06-21-18", "000-001" );
INSERT INTO guestscomments ( message, date, pid ) VALUES ( "May i request to send to my email address the photo of Pig's Ear, i have only access to my email now, thank you", "05-21-18", "000-002" );
INSERT INTO guestscomments ( message, date, pid ) VALUES ( "I need badly the How to Re-plant Crown of Thorns, i have one and its dying", "04-21-18", "000-003" );

CREATE TABLE admins (
	username VARCHAR (50) NOT NULL,
	password VARCHAR (50) NOT NULL
);

INSERT INTO admins ( username, password ) VALUES ( "lorileemortel", "AlexMort3l90)" );
