[ map(select((.DescribedBy.DistilledAt.RegionOf| length) >= 1)) | .[] | { "bottleID": .["@id"], regions: [.DescribedBy.DistilledAt.RegionOf | .[].namel.en] | join(", ") } ]

dali jsme si celkem praci s tim a ted nejak neni cas na prepisovani ale funguje na 
array v @graphu ...



 [
		{
			"@id": "ex:matyseq_laga16",
			"@type": "ex:Bottle",
			"bottleID": 1,
			"shotPrice": 69,
			"currency": "CZK",
			"inStock": false,
			"barcode": "1348690",
			"purchaseDate": { "@value": "1999-09-01T00:00:00", "@type": "http://www.w3.org/2001/XMLSchema#dateTime" },
			"Ownershipsl": [],
			"SpecialPrices": [
				{
					"@id": "ex:matFor65",
					"@type": "ex:SpecialPrice",
					"price": 65,
					"currency": "CZK",
					"customerID": 1
				}
			],
			"DescribedBy": {
				"@id": "ex:laga16",
				"@type": "ex:Description",
				"name": "Lagavulin 16 y.o.",
				"voltage": 43,
				"age": 16,
				"DistilledAt": {
					"@id": "ex:laga",
					"@type": "ex:Distillery",
					"namel": { "en": "Lagavulin" },
					"founded": 1816,
					"RegionOf": [
						{
							"@id": "ex:islay",
							"@type": "ex:Region",
							"namel": {
								"en": "Islay"
							}
						}
					]
				}
			},
			"Transactions": [],
			"bottlePrice": 1130
		},
		{
			"@id": "ex:matyseq_glen15",
			"@type": "ex:Bottle",
			"bottleID": 2,
			"priceForML": 87,
			"currency": "CZK",
			"inStock": true,
			"barcode": "3454665",
			"purchaseDate": { "@value": "1939-09-01T00:00:00", "@type": "http://www.w3.org/2001/XMLSchema#dateTime" },
			"Ownershipsl": [],
			"SpecialPrices": [],
			"DescribedBy": {
				"@id": "ex:glen15",
				"@type": "ex:Description",
				"name": "Glenfiddich 15 y.o.",
				"voltage": 40,
				"age": 15,
				"DistilledAt": {
					"@id": "ex:glen",
					"@type": "ex:Distillery",
					"namel": { "en": "Glenmorangie" },
					"founded": 1843,
					"RegionOf": [
						{
							"@id": "ex:speyside",
							"@type": "ex:Region",
							"namel": {
								"en": "Speyside"
							}
						}
					]
				}
			},
			"Transactions": [],
			"bottlePrice": 978
		},
		{
			"@id": "ex:fojtiseq_laga16",
			"@type": "ex:Bottle",
			"bottleID": 3,
			"shotPrice": 76,
			"currency": "CZK",
			"inStock": true,
			"barcode": "2345657",
			"purchaseDate": { "@value": "2020-02-20T20:20:20", "@type": "http://www.w3.org/2001/XMLSchema#dateTime" },
			"Ownershipsl": [
				{
					"@id": "ex:ow-10001",
					"@type": "ex:Ownership",
					"share": 100,
					"customerID": 2
				}
			],
			"SpecialPrices": [
				{
					"@id": "ex:for00",
					"@type": "ex:SpecialPrice",
					"price": 0,
					"currency": "CZK",
					"customerID": 2
				}
			],
			"DescribedBy": {
				"@id": "ex:laga16"
			},
			"Transactions": [
				{
					"@id": "ex:tr-00001",
					"@type": "ex:Transaction",
					"ammountMl": 200,
					"price": 0,
					"currency": "CZK",
					"creationTime": {
						"@value": "2020-12-31T23:57:00",
						"@type": "http://www.w3.org/2001/XMLSchema#dateTime"
					},
					"customerID": 2
				}
			],
			"bottlePrice": 1159
		},
		{
			"@id": "ex:honziq_redb12",
			"@type": "ex:Bottle",
			"bottleID": 4,
			"shotPrice": 90,
			"currency": "CZK",
			"inStock": true,
			"barcode": "1235112",
			"purchaseDate": { "@value": "2020-02-20T20:20:20", "@type": "http://www.w3.org/2001/XMLSchema#dateTime" },
			"Ownershipsl": [
				{
					"@id": "ex:ow-10002",
					"@type": "ex:Ownership",
					"share": 50,
					"customerID": 4
				}
			],
			"SpecialPrices": [
				{
					"@id": "ex:ow-10003",
					"@type": "ex:Ownership",
					"price": 50,
					"currency": "CZK",
					"customerID": 1
				}
			],
			"DescribedBy": {
				"@id": "ex:redb12",
				"@type": "ex:Description",
				"name": "Redbreast 12 y.o.",
				"voltage": 40,
				"age": 12,
				"DistilledAt": {
					"@id": "ex:redb",
					"@type": "ex:Distillery",
					"namel": { "en": "Redbreast" },
					"founded": 1903,
					"RegionOf": [
						{
							"@id": "ex:ireland",
							"@type": "ex:Region",
							"namel": {
								"en": "Ireland"
							}
						}
					]
				}
			},
			"Transactions": [
				{
					"@id": "ex:tr-00002",
					"@type": "ex:Transaction",
					"ammountMl": 400,
					"price": 120,
					"currency": "CZK",
					"creationTime": {
						"@value": "2020-12-31T23:58:00",
						"@type": "http://www.w3.org/2001/XMLSchema#dateTime"
					},
					"customerID": 2
				}
			],
			"bottlePrice": 1430
		},
		{
			"@id": "ex:vojta_bowm18",
			"@type": "ex:Bottle",
			"bottleID": 5,
			"shotPrice": 175,
			"currency": "CZK",
			"inStock": true,
			"barcode": "7777777",
			"purchaseDate": { "@value": "2021-01-12T12:00:00", "@type": "http://www.w3.org/2001/XMLSchema#dateTime" },
			"Ownershipsl": [],
			"SpecialPrices": [],
			"DescribedBy": {
				"@id": "ex:bowm18",
				"@type": "ex:Description",
				"name": "Bowmore 18 y.o.",
				"voltage": 43,
				"age": 18,
				"DistilledAt": {
					"@id": "ex:bowm",
					"@type": "ex:Distillery",
					"namel": { "en": "Bowmore" },
					"founded": 1779,
					"RegionOf": [
						{
							"@id": "ex:highland",
							"@type": "ex:Region",
							"namel": {
								"en": "Highland"
							}
						},
						{
							"@id": "ex:speyside",
							"@type": "ex:Region",
							"namel": {
								"en": "Speyside"
							}
						}
					]
				}
			},
			"Transactions": [],
			"bottlePrice": 1930
		}
	]
