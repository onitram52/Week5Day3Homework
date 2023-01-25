INSERT INTO "Payment" (
	payment_type,
	amount
) VALUES (
	'Card',
	'20.00'
);

INSERT INTO "Movies" (
	rating,
	movie_name,
	run_time
) VALUES (
	'PG',
	'Bee Movie',
	'120'
);

INSERT INTO "Customer" (
	first_name,
	last_name,
	payment_id
) VALUES (
	'Todd',
	'Rundgren',
	'1'
);

INSERT INTO "Concessions" (
	"name",
	concession_price,
	payment_id
) VALUES (
	'Gushers',
	'5.00',
	'1'
);

SELECT * 
FROM "Concessions"
