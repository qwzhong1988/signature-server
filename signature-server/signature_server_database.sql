CREATE TABLE "USER" (
  `uuid` INTEGER PRIMARY KEY AUTOINCREMENT,
  `email` TEXT NOT NULL UNIQUE,
  `password`  TEXT NOT NULL
);
CREATE TABLE "SIGNATURE" (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `signature` BLOB NOT NULL,
  `uuid` INTEGER NOT NULL,
  FOREIGN KEY(`uuid`) REFERENCES USER(uuid)
);
CREATE TABLE "REQUEST" (
  `id` INTEGER PRIMARY KEY,
  `uuid` INTEGER NOT NULL,
  `document` INTEGER NOT NULL,
  `signature` BLOB,
  FOREIGN KEY(`uuid`) REFERENCES USER(uuid)
);