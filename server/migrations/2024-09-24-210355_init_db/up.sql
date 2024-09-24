-- Your SQL goes here
CREATE TABLE "models"(
	"id" INT4 NOT NULL PRIMARY KEY,
	"model_name" TEXT NOT NULL
);

CREATE TABLE "users"(
	"id" INT4 NOT NULL PRIMARY KEY
);

CREATE TABLE "sessions"(
	"id" INT4 NOT NULL PRIMARY KEY,
	"user" INT4 NOT NULL,
	"language" STRING NOT NULL,
	"uuid" UUID NOT NULL,
	"resource" OPTION NOT NULL,
	"sample_rate" INT4 NOT NULL,
	"silence_length" INT4 NOT NULL,
	"sequence_number" INT4 NOT NULL,
	"updated_at" TIMESTAMP NOT NULL,
	"created_at" TIMESTAMP NOT NULL,
	"transcripts" JSONB NOT NULL,
	"model" INT4 NOT NULL
);

