CREATE TABLE "todo"(
"id" serial PRIMARY KEY,
"title" varchar(255) NOT NULL,
"details" varchar(1500),
"priority" int NOT NULL DEFAULT 1,
"created_at" TIMESTAMP NOT NULL,
"completed_at" TIMESTAMP);


ALTER TABLE "todo" DROP "created_at";
ALTER TABLE "todo" DROP "completed_at";
ALTER TABLE "todo" ADD COLUMN "created_at" NOT NULL;
ALTER TABLE "todo" ADD COLUMN "completed_at";


INSERT INTO "todo" VALUES (1, 'Do Laundry', 'wash, dry and fold clothing', 1, '2017-06-24', '2017-06-26');
INSERT 0 1
INSERT INTO "todo" VALUES (2, 'Wash Car', 'clean car thoroughly', 1, '2017-06-25', NULL);
INSERT 0 1
INSERT INTO "todo" VALUES (3, 'Jaxon Karate', 'take Jaxon to karate', 2, '2017-06-28', NULL);
INSERT 0 1
INSERT INTO "todo" VALUES (4, 'Ship packages', 'send pkgs to family', 5, '2017-06-20', NULL);
INSERT INTO "todo" VALUES (5, 'get groceries', 'go to the market and buy food', 3, '2017-06-25', NULL);

SELECT * FROM "todo" WHERE "completed_at" = NULL;

select * from "todo" WHERE "priority" > 1;

UPDATE "todo" SET "completed_at" = '2017-06-27' WHERE "id" = 4;

DELETE FROM "todo" WHERE "completed_at" = NOT NULL;
