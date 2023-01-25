CREATE TABLE "Payment" (
  "payment_id" SERIAL,
  "payment_type" VARCHAR(100),
  "amount" NUMERIC(5,2),
  PRIMARY KEY ("payment_id")
);

CREATE TABLE "Movies" (
  "movie_id" SERIAL,
  "rating" VARCHAR(100),
  "movie_name" VARCHAR(100),
  "run_time" VARCHAR(100),
  "ticket_id" INTEGER,
  PRIMARY KEY ("movie_id"),
  FOREIGN KEY ("ticket_id") REFERENCES "Tickets"
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "payment_id" INTEGER,
  PRIMARY KEY ("customer_id"),
  FOREIGN KEY ("payment_id") REFERENCES "Payment"
);

CREATE TABLE "Concessions" (
  "concession_id" SERIAL,
  "name" VARCHAR(100),
  "concession_price" NUMERIC(3,2),
  "payment_id" INTEGER,
  PRIMARY KEY ("concession_id"),
  FOREIGN KEY ("payment_id") REFERENCES "Payment"
);

CREATE TABLE "Tickets" (
  "ticket_id" SERIAL,
  "ticket_price" NUMERIC(3,2),
  "movie_id" INTEGER,
  "payment_id" INTEGER,
  PRIMARY KEY ("ticket_id"),
  FOREIGN KEY ("movie_id") REFERENCES "Movies"("movie_id"),
  FOREIGN KEY ("payment_id") REFERENCES "Payment"("payment_id")
);

-- I used payment because I figured it'd be nice to be able to use it to keep track of all the seperate things the customer
-- pays for. Since customer is related to payment, and payment is related to concessions and tickets (which is related to
-- movies), I should be able to get info about any of the other Tables no matter where I start.