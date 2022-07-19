CREATE TABLE `Location` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`address`	TEXT NOT NULL
);

CREATE TABLE `Customer` (
    `id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `name`    TEXT NOT NULL,
    `address`    TEXT NOT NULL,
    `email`    TEXT NOT NULL,
    `password`    TEXT NOT NULL
);

CREATE TABLE `Animal` (
	`id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`  TEXT NOT NULL,
	`status` TEXT NOT NULL,
	`breed` TEXT NOT NULL,
	`customer_id` INTEGER NOT NULL,
	`location_id` INTEGER,
	FOREIGN KEY(`customer_id`) REFERENCES `Customer`(`id`),
	FOREIGN KEY(`location_id`) REFERENCES `Location`(`id`)
);


CREATE TABLE `Employee` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`address`	TEXT NOT NULL,
	`location_id` INTEGER NOT NULL,
	FOREIGN KEY(`location_id`) REFERENCES `Location`(`id`)

);

INSERT INTO `Location` VALUES (null, 'Nashville North', "64 Washington Heights");
INSERT INTO `Location` VALUES (null, 'Nashville South', "101 Penn Ave");


INSERT INTO `Employee` VALUES (null, "Dwight Schrute", "35498 Madison Ave", 1);
INSERT INTO `Employee` VALUES (null, "Michael Scott", "100 Main St", 1);
INSERT INTO `Employee` VALUES (null, "Angela Martin", "404 Unknown Ct", 2);
INSERT INTO `Employee` VALUES (null, "Pam Beesly", "204 Empty Ave", 1);
INSERT INTO `Employee` VALUES (null, "Jim Halpert", "200 Success Way", 2);


INSERT INTO `Customer` VALUES (null, "Mo Silvera", "201 Created St", "mo@silvera.com", "password");
INSERT INTO `Customer` VALUES (null, "Bryan Nilsen", "500 Internal Error Blvd", "bryan@nilsen.com", "password");
INSERT INTO `Customer` VALUES (null, "Jenna Solis", "301 Redirect Ave", "jenna@solis.com", "password");
INSERT INTO `Customer` VALUES (null, "Emily Lemmon", "454 Mulberry Way", "emily@lemmon.com", "password");
INSERT INTO `Customer` VALUES (null, "Kitty Purry", "568 Fluffytails Blvd", "kitty@purry.com", "password");
INSERT INTO `Customer` VALUES (null, "Sakura Kidamora", "128 Coding Blvd", "SK1287@coding.com", "password");



INSERT INTO `Animal` VALUES (null, "Snickers", "Recreation", "Dalmation", 4, 1);
INSERT INTO `Animal` VALUES (null, "Jax", "Treatment", "Beagle", 1, 1);
INSERT INTO `Animal` VALUES (null, "Falafel", "Treatment", "Siamese", 4, 2);
INSERT INTO `Animal` VALUES (null, "Doodles", "Kennel", "Poodle", 3, 1);
INSERT INTO `Animal` VALUES (null, "Daps", "Kennel", "Boxer", 2, 2);
INSERT INTO `Animal` VALUES (null, "Hairy Paw-ter", "Recreation", "Dalmation", 4, 2);
INSERT INTO `Animal` VALUES (null, "Arf Vader", "Treatment", "Beagle", 1, 2);
INSERT INTO `Animal` VALUES (null, "Chewbarka", "Kennel", "Poodle", 3, 1);
INSERT INTO `Animal` VALUES (null, "Droolius Caesar", "Kennel", "Boxer", 2, 2);
INSERT INTO `Animal` VALUES (null, "Cat Benetar", "Recreation", "Tabby", 5, 1);
INSERT INTO `Animal` VALUES (null, "Meownerva Meownagall", "Recreation", "Calico", 5, 1);
INSERT INTO `Animal` VALUES (null, "Meowly Cyrus”,"Treatment", "Persian Cat", 6, 2);
INSERT INTO `Animal` VALUES (null, "Fleas Witherspoon", "Kennel", "Persian Cat", 3, 1);
INSERT INTO `Animal` VALUES (null, "Neil Catrick Harris", "Recreation", "Black Cat", 6, 2);
INSERT INTO `Animal` VALUES (null, "JK Growling”, "Recreation", "Doxen-Chihuahua mix", 6, 2);

-- Get only the animal rows where the `id` field value is 3
SELECT
    a.id,
    a.name,
    a.breed,
    a.status,
    a.location_id,
    a.customer_id
FROM animal a
WHERE a.id = 2


-- Get all animals w/ their location name + address
SELECT
    a.id,
    a.name,
    a.breed,
    a.status,
    a.location_id,
    a.customer_id,
    l.name location_name,
    l.address location_address
FROM Animal a
JOIN Location l
    ON l.id = a.location_id

SELECT * FROM Animal ORDER BY id DESC;