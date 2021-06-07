[(([.[].Transactions] | flatten)[].price)] | add

[(([.["@graph"][].Transactions] | flatten)[].price)] | add

[
  {
    "@id": "ex:matisek",
    "@type": "ex:Customer",
    "name": "Matyas Brabec",
    "givenName": "Matyas",
    "familyName": "Brabec",
    "email": "Stooped@hotmail.com",
    "login": "KutalejiciseKrava",
    "Owns": [
      {
        "@id": "ex:ow-10003",
        "@type": "ex:Ownership",
        "share": 50,
        "OwnedBottle": {
          "@id": "ex:honziq_redb12"
        },
        "bottleID": 4
      }
    ],
    "SpecialPrices": [
      {
        "@id": "ex:matFor65",
        "@type": "ex:SpecialPrice",
        "PriceForML": 65,
        "currency": "CZK",
        "bottleID": 1,
        "SPBottle": {
          "@id": "ex:matyseq_laga16"
        }
      },
      {
        "@id": "ex:matFor50",
        "@type": "ex:SpecialPrice",
        "PriceForML": 50,
        "currency": "CZK",
        "bottleID": 4,
        "SPBottle": {
          "@id": "ex:honziq_redb12"
        }
      }
    ],
    "Transactions": [
      {
        "@id": "ex:tr-00003",
        "@type": "ex:Transaction",
        "ammountMl": 1000,
        "price": 69000,
        "currency": "CZK",
        "creationTime": {
          "@value": "2021-01-12T12:00:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "TransactionedBottle": {
          "@id": "ex:matyseq_laga16"
        },
        "TransactionMadeBY": {
          "@id": "ex:matisek"
        },
        "bottleID": 1
      }
    ],
    "NfcTag": []
  },
  {
    "@id": "ex:fojtiseq",
    "@type": "ex:Customer",
    "name": "Vojtech Brecka",
    "givenName": "Vojtech",
    "familyName": "Brecka",
    "email": "HyperKraken@hotmail.com",
    "login": "TurboKraken",
    "Owns": [
      {
        "@id": "ex:ow-10001",
        "@type": "ex:Ownership",
        "share": 100,
        "OwnedBottle": {
          "@id": "ex:fojtiseq_laga16"
        },
        "bottleID": 3
      }
    ],
    "SpecialPrices": [
      {
        "@id": "ex:for00",
        "@type": "ex:SpecialPrice",
        "PriceForML": 0,
        "currency": "CZK",
        "SPBottle": {
          "@id": "ex:fojtiseq_laga16"
        },
        "bottleID": 3
      }
    ],
    "Transactions": [
      {
        "@id": "ex:tr-00001",
        "@type": "ex:Transaction",
        "ammountMl": 200,
        "price": 0,
        "currency": "CZK",
        "creationTime": {
          "@value": "2020-12-31T23:58:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        },
        "TransactionedBottle": {
          "@id": "ex:fojtiseq_laga16"
        },
        "TransactionMadeBY": {
          "@id": "ex:fojtiseq"
        },
        "bottleID": 3
      },
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
        "TransactionedBottle": {
          "@id": "ex:honziq_redb12"
        },
        "TransactionMadeBY": {
          "@id": "ex:fojtiseq"
        },
        "bottleID": 4
      }
    ],
    "CNfcTag": [
      {
        "@id": "ex:testTag",
        "@type": "ex:NfcTag",
        "code": "OXPR456ADS75",
        "creationTime": {
          "@value": "2020-06-09T23:58:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        }
      },
      {
        "@id": "ex:fojtisequv",
        "@type": "ex:NfcTag",
        "code": "OXPC987ADS75",
        "creationTime": {
          "@value": "2001-09-11T23:58:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        }
      }
    ]
  },
  {
    "@id": "ex:kulicka",
    "@type": "ex:Customer",
    "name": "Vojtech Mikiska",
    "givenName": "Vojtech",
    "familyName": "Mykiska",
    "email": "TurboBurt@nitroParek.com",
    "login": "TurboBurt",
    "Owns": [],
    "SpecialPrices": [],
    "Transactions": [],
    "CNfcTag": [
      {
        "@id": "ex:kulickuv",
        "@type": "ex:NfcTag",
        "code": "OXPZ6940ADS75",
        "creationTime": {
          "@value": "2012-04-20T23:58:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        }
      }
    ]
  },
  {
    "@id": "ex:listecek",
    "@type": "ex:Customer",
    "name": "lee stack",
    "givenName": "Lee",
    "familyName": "Stack",
    "email": "Listonoh@ddd.com",
    "login": "LeeStack",
    "Owns": [
      {
        "@id": "ex:ow-10002",
        "@type": "ex:Ownership",
        "share": 50,
        "OwnedBottle": {
          "@id": "ex:honziq_redb12"
        },
        "bottleID": 4
      }
    ],
    "SpecialPrices": [],
    "Transactions": [],
    "CNfcTag": [
      {
        "@id": "ex:listSvobod",
        "@type": "ex:NfcTag",
        "code": "OXPZ5540ADS75",
        "creationTime": {
          "@value": "2022-04-20T23:58:00",
          "@type": "http://www.w3.org/2001/XMLSchema#dateTime"
        }
      }
    ]
  }
]
