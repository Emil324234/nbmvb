CREATE DATABASE DS3;
GO

USE DS3;
GO

CREATE TABLE Players(
    Player_ID INT PRIMARY KEY IDENTITY (1,1),
    PlayerName VARCHAR(100) NOT NULL,
    PlayerLevel INT NOT NULL,
    PlayerClass VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Weapons(
    Weapon_ID INT PRIMARY KEY IDENTITY (1,1),
    WeaponName VARCHAR(100) NOT NULL,
    WeaponClass VARCHAR(100) NOT NULL,
    WeaponDmg INT NOT NULL,
    WeaponWeight INT NOT NULL
);
GO

CREATE TABLE PlayerWeaponRelation(
    Player_ID INT NOT NULL,
    Weapon_ID INT NOT NULL,
    PRIMARY KEY (Player_ID, Weapon_ID),
    FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Weapon_ID) REFERENCES Weapons(Weapon_ID)
);
GO

INSERT INTO Players (PlayerName, PlayerLevel, PlayerClass)
VALUES ('Player1', 10, 'Warrior'),
       ('Player2', 20, 'Mage'),
       ('Player3', 15, 'Ranger');
GO

INSERT INTO Weapons (WeaponName, WeaponClass, WeaponDmg, WeaponWeight)
VALUES ('Sword', 'Melee', 15, 10),
       ('Bow', 'Crossbow', 20, 25),
       ('Staff', 'Magic Staff', 7, 35);
GO

INSERT INTO PlayerWeaponRelation(Player_ID, Weapon_ID)
VALUES (1, 1),
       (2, 2),
       (3, 3);
GO

select * from PlayerWeaponRelation