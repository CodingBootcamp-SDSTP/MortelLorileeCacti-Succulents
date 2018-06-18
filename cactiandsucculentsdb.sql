DROP TABLE IF EXISTS plants;
CREATE TABLE plants (
	pid INTEGER (10) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (50) NOT NULL,
	type VARCHAR (50) NOT NULL,
	native VARCHAR (50) NOT NULL,
	category VARCHAR (50) NOT NULL,
	scientificname VARCHAR (50) NOT NULL,	
	alsoknownas VARCHAR (50) NOT NULL,
	colors VARCHAR (100) NOT NULL,
	howtogrow VARCHAR (300) NOT NULL,
	image VARCHAR (50) NOT NULL,
	video VARCHAR (50) NOT NULL
);

INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Christmas Cactus", "Cactus", "Brazil", "Indoor Type", "Schlumbergera Bridgesii", "Thanksgiving Cactus", "Red, Purple, Orange, Pink & Cream", "Through cuttings", "christmascactus.jpg", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Easter Cactus", "Cactus", "Eastern Brazil", "Indoor Type", "Rhipsalidopsis Gaertnerii", "Whitsun Cactus", "Red, Orange, Peach, Lavander & Pink", "Through Re-Potting", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Desert Cactus", "Cactus", "Arizona", "Indoor Type", "Carnegia Gigantia", "Cacti of Arizona", "Deep Magenta, Cream-Colored Blossoms, Bright Yellow Prickly Pear & Pink Blooms", "Through Re-Potting", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Golden Barrel Cactus", "Cactus", "Brazil", "Outdoor Type", "Echinocactus Grusonii", "mother-in-law's Cushion", "Vertival Yello Ribs that Line its Edges", "Through seedlings & Re-Potting", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Columnar Cactus", "Cactus", "Eastern Brazil", "Outdoor Type", "Cereus hexagonus", "Slender Candle", "Exotic Blue Skin Color & Green", "Through Cuttings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Prickly Pear Cactus", "Cactus", "Arizona", "Outdoor Type", "Opuntia streptacantha", "Tuna Fruit", "Yellow, Red & Purple Blooms", "Through Cuttings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Burro’s Tail", "Succulents", "South Mexico", "Indoor Type", "Sedum Morganianum", "Donkey Tail Plant", "Blue-Green Leaves and Terminal Pink to Red Blooms", "Through Cuttings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Crown of Thorns", "Succulents", "Latin America", "Indoor Type", "Euphorbia Milii", "Christ thorn", "Red Bracts, Pink, Yellow or Whitish Varieties", "Through Cuttings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Flaming Katy", "Succulents", "Madagascar", "Indoor Type", "Kalanchoe Blossfeldiana", "Christmas kalanchoe", "Red, Yellow, Lilac & Orange", "Through Seedlings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Hens-and-Chicks", "Succulents", "Southern Europe and Northern Africa", "Outdoor Type", "Sempervivum Tectorum", "Houseleeks", "Bright Green & Maroon", "Through Seedlings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Pig’s Ear", "Succulents", "Pennsylvania", "Outdoor Type", "Cotyledon Orbiculata", "Pig’s Ear", "Red & Orange Blooms", "Through Cuttings", "", "" );
INSERT INTO plants ( name, type, native, category, scientificname, alsoknownas, colors, howtogrow, image, video )
VALUES ( "Zwartkop", "Succulents", "Canary Islands", "Outdoor Type", "Aeonium Arboreum", "Black Beauty", "Deep Marron", "Through Cuttings", "", "" );
