-- If exists, drop existing tables before creating
DROP TABLE IF EXISTS campaigns CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;


-- Create database schema
CREATE TABLE "category" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaigns" (
    "cf_id" integer   NOT NULL,
    "contact_id" int   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" integer  DEFAULT 0.00 NOT NULL,
    "pledged" integer  DEFAULT 0.00 NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int  DEFAULT 0 NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar(3)  NOT NULL,
    "launch_date" timestamp without time zone NOT NULL,
    "end_date" timestamp without time zone NOT NULL,
    CONSTRAINT "pk_campaigns" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
