CREATE TABLE "student" (
  "id" SERIAL PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "birth_date" date,
  "created_at" timestamp
);

CREATE TABLE "enrollment" (
  "id" SERIAL PRIMARY KEY,
  "student_id" int,
  "lecture_id" int,
  "date_of_enrollment" date,
  "course_name" varchar,
  "created_at" timestamp
);

CREATE TABLE "lecture" (
  "id" SERIAL PRIMARY KEY,
  "study_time" timestamp,
  "lecture_name" varchar,
  "subject_id" int,
  "lecture_id" int,
  "created_at" timestamp
);

CREATE TABLE "lecturer" (
  "id" SERIAL PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "created_at" timestamp
);

CREATE TABLE "subject" (
  "id" SERIAL PRIMARY KEY,
  "unit" varchar,
  "description" varchar,
  "created_at" timestamp
);

ALTER TABLE "enrollment" ADD FOREIGN KEY ("student_id") REFERENCES "student" ("id");

ALTER TABLE "enrollment" ADD FOREIGN KEY ("lecture_id") REFERENCES "lecture" ("id");

ALTER TABLE "lecture" ADD FOREIGN KEY ("subject_id") REFERENCES "subject" ("id");

ALTER TABLE "lecture" ADD FOREIGN KEY ("lecture_id") REFERENCES "lecturer" ("id");

