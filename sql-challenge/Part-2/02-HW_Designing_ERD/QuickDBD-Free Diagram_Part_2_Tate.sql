-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FYISEo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Gym_Members" (
    "id" SERIAL   NOT NULL,
    "member_id" int   NOT NULL,
    "member_since" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "address" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "gym" VARCHAR   NOT NULL,
    "trainer_id" VARCHAR   NOT NULL,
    "payments_CC" int   NOT NULL,
    CONSTRAINT "pk_Gym_Members" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Trainers" (
    "id" SERIAL   NOT NULL,
    "emp_id" int   NOT NULL,
    "date_hired" date   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "address" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "gym" VARCHAR   NOT NULL,
    "certifications" VARCHAR   NOT NULL,
    "client_id" int   NOT NULL,
    "payments_DD" int   NOT NULL,
    CONSTRAINT "pk_Trainers" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Gym_Members" ADD CONSTRAINT "fk_Gym_Members_member_id_gym_trainer_id" FOREIGN KEY("member_id", "gym", "trainer_id")
REFERENCES "Trainers" ("client_id", "gym", "emp_id");

