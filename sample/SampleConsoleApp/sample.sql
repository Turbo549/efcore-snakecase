CREATE TABLE IF NOT EXISTS "__ef_migration_history" (
    "migration_id" TEXT NOT NULL CONSTRAINT "PK___ef_migration_history" PRIMARY KEY,
    "product_version" TEXT NOT NULL
);

CREATE TABLE "people" (
    "person_id" INTEGER NOT NULL CONSTRAINT "pk_people" PRIMARY KEY AUTOINCREMENT,
    "personal_email" TEXT NULL,
    "average_rate" INTEGER NOT NULL
);

CREATE TABLE "belongings" (
    "personal_object_id" INTEGER NOT NULL CONSTRAINT "pk_belongings" PRIMARY KEY AUTOINCREMENT,
    "personal_object_title" TEXT NULL,
    "personal_object_content" TEXT NULL,
    "person_id" INTEGER NOT NULL,
    CONSTRAINT "fk_belongings_people_person_id" FOREIGN KEY ("person_id") REFERENCES "people" ("person_id") ON DELETE CASCADE
);

CREATE INDEX "ix_belongings_person_id" ON "belongings" ("person_id");

INSERT INTO "__ef_migration_history" ("migration_id", "product_version")
VALUES ('20200115015251_Initial', '3.0.0');

