library constants;

/* const cm_orange = [
  {
    "min": 50,
    "max": 6500,
    "customer": {"send": '1%', "out": '3%'},
    "no_customer": {"send": "4%", "out": 0}
  },
  {
    "min": 6501,
    "max": 10000,
    "customer": {"send": 50, "out": 180},
    "no_customer": {"send": 250, "out": 0}
  },
  {
    "min": 10001,
    "max": 13500,
    "customer": {"send": 100, "out": 300},
    "no_customer": {"send": 400, "out": 0}
  },
  {
    "min": 13501,
    "max": 25000,
    "customer": {"send": 150, "out": 350},
    "no_customer": {"send": 525, "out": 0}
  },
  {
    "min": 25001,
    "max": 50000,
    "customer": {"send": 150, "out": 700},
    "no_customer": {"send": 900, "out": 0}
  },
  {
    "min": 50001,
    "max": 80000,
    "customer": {"send": 200, "out": 1350},
    "no_customer": {"send": 1700, "out": 0}
  },
  {
    "min": 80001,
    "max": 100000,
    "customer": {"send": 200, "out": 1800},
    "no_customer": {"send": 2300, "out": 0}
  },
  {
    "min": 100001,
    "max": 200000,
    "customer": {"send": 300, "out": 2150},
    "no_customer": {"send": 2700, "out": 0}
  },
  {
    "min": 200001,
    "max": 300000,
    "customer": {"send": 300, "out": 2600},
    "no_customer": {"send": 3100, "out": 0}
  },
  {
    "min": 300001,
    "max": 400000,
    "customer": {"send": 300, "out": 3100},
    "no_customer": {"send": 3600, "out": 0}
  },
  {
    "min": 400001,
    "max": 500000,
    "customer": {"send": 500, "out": 3600},
    "no_customer": {"send": 4000, "out": 0}
  },
  {
    "min": 500001,
    "max": 1000000,
    "customer": {"send": 500, "out": null},
    "no_customer": {"send": null, "out": null}
  }
];
*/
/* const cm_mtn = [
  {
    "min": 100,
    "max": 5999,
    "customer": {"send": '1%', "out": "3%"},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 6000,
    "max": 10050,
    "customer": {"send": '1%', "out": 175},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 10051,
    "max": 13550,
    "customer": {"send": 100, "out": 300},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 13551,
    "max": 25050,
    "customer": {"send": 125, "out": 350},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 25051,
    "max": 50050,
    "customer": {"send": 125, "out": 700},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 50051,
    "max": 75100,
    "customer": {"send": 125, "out": 1350},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 75101,
    "max": 100100,
    "customer": {"send": 125, "out": 1800},
    "no_customer": {"send": "3%", "out": 0}
  },
  {
    "min": 100101,
    "max": 200500,
    "customer": {"send": 125, "out": 2150},
    "no_customer": {"send": 3100, "out": 0}
  },
  {
    "min": 200501,
    "max": 300500,
    "customer": {"send": 125, "out": 2600},
    "no_customer": {"send": 3500, "out": 0}
  },
  {
    "min": 300501,
    "max": 400500,
    "customer": {"send": 125, "out": 3100},
    "no_customer": {"send": 3500, "out": 0}
  },
  {
    "min": 400501,
    "max": 500000,
    "customer": {"send": 125, "out": 3500},
    "no_customer": {"send": 4000, "out": 0}
  },
];*/

const cm_yup = [
  {
    "min": 500,
    "max": 3000,
    "customer": {"send": 0, "out": "2.75%"},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 3001,
    "max": 5000,
    "customer": {"send": 0, "out": "2.75%"},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 5001,
    "max": 10000,
    "customer": {"send": 0, "out": 150},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 10001,
    "max": 15000,
    "customer": {"send": 0, "out": 300},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 15001,
    "max": 25000,
    "customer": {"send": 0, "out": 350},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 25001,
    "max": 50000,
    "customer": {"send": 0, "out": 650},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 50001,
    "max": 80000,
    "customer": {"send": 0, "out": 1200},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 80001,
    "max": 100000,
    "customer": {"send": 0, "out": 1500},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 100001,
    "max": 200000,
    "customer": {"send": 0, "out": 2000},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 200001,
    "max": 300000,
    "customer": {"send": 0, "out": 2500},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 300001,
    "max": 400000,
    "customer": {"send": 0, "out": 2850},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 400001,
    "max": 500000,
    "customer": {"send": 0, "out": 3200},
    "no_customer": {"send": null, "out": null}
  },
];

const cm_exp = [
  {
    "min": 1,
    "max": 3000,
    "customer": {"send": 0, "out": 100},
    "no_customer": {"send": 150, "out": 100}
  },
  {
    "min": 3001,
    "max": 10000,
    "customer": {"send": 0, "out": 150},
    "no_customer": {"send": 150, "out": 150}
  },
  {
    "min": 10001,
    "max": 15000,
    "customer": {"send": 0, "out": 350},
    "no_customer": {"send": 400, "out": 350}
  },
  {
    "min": 15001,
    "max": 20000,
    "customer": {"send": 0, "out": 350},
    "no_customer": {"send": 500, "out": 350}
  },
  {
    "min": 20001,
    "max": 25000,
    "customer": {"send": 0, "out": 350},
    "no_customer": {"send": 500, "out": 350}
  },
  {
    "min": 25001,
    "max": 50000,
    "customer": {"send": 0, "out": 650},
    "no_customer": {"send": 900, "out": 650}
  },
  {
    "min": 50001,
    "max": 80000,
    "customer": {"send": 0, "out": 1350},
    "no_customer": {"send": 1400, "out": 1350}
  },
  {
    "min": 80001,
    "max": 100000,
    "customer": {"send": 0, "out": 1650},
    "no_customer": {"send": 1900, "out": 1650}
  },
  {
    "min": 100001,
    "max": 200000,
    "customer": {"send": 0, "out": 2100},
    "no_customer": {"send": 2200, "out": 2100}
  },
  {
    "min": 200001,
    "max": 300000,
    "customer": {"send": 0, "out": 2300},
    "no_customer": {"send": 2300, "out": 2300}
  },
  {
    "min": 300001,
    "max": 400000,
    "customer": {"send": 0, "out": 2400},
    "no_customer": {"send": 2400, "out": 2400}
  },
  {
    "min": 400001,
    "max": 500000,
    "customer": {"send": 0, "out": 2500},
    "no_customer": {"send": 2500, "out": 2500}
  },
  {
    "min": 500001,
    "max": 600000,
    "customer": {"send": 0, "out": 4000},
    "no_customer": {"send": 4000, "out": 4000}
  },
  {
    "min": 600001,
    "max": 700000,
    "customer": {"send": 0, "out": 4200},
    "no_customer": {"send": 4200, "out": 4200}
  },
  {
    "min": 700001,
    "max": 800000,
    "customer": {"send": 0, "out": 4400},
    "no_customer": {"send": 4400, "out": 4400}
  },
  {
    "min": 800001,
    "max": 900000,
    "customer": {"send": 0, "out": 4700},
    "no_customer": {"send": 4700, "out": 4700}
  },
  {
    "min": 900001,
    "max": 1000000,
    "customer": {"send": 0, "out": 5000},
    "no_customer": {"send": 5000, "out": 5000}
  },
];

const cm_yoo = [
  {
    "min": 100,
    "max": 3000,
    "customer": {"send": 21, "out": 100},
    "no_customer": {
      "other": true,
      "orange": {"send": "1%", "out": "3%"},
      "mtn": {"send": "1%", "out": "3%"}
    }
  },
  {
    "min": 3001,
    "max": 5000,
    "customer": {"send": 35, "out": 150},
    "no_customer": {
      "other": true,
      "orange": {"send": "1%", "out": "3%"},
      "mtn": {"send": "1%", "out": "3%"}
    }
  },
  {
    "min": 5001,
    "max": 10000,
    "customer": {"send": 70, "out": 350},
    "no_customer": {
      "other": true,
      "orange": {"send": 50, "out": 180},
      "mtn": {"send": "1%", "out": 175}
    }
  },
  {
    "min": 10001,
    "max": 15000,
    "customer": {"send": 75, "out": 350},
    "no_customer": {
      "other": true,
      "orange": {"send": 100, "out": 180},
      "mtn": {"send": "1%", "out": 175}
    }
  },
  {
    "min": 15001,
    "max": 25000,
    "customer": {"send": 75, "out": 350},
    "no_customer": {
      "other": true,
      "orange": {"send": 100, "out": 300},
      "mtn": {"send": "1%", "out": 300}
    }
  },
  {
    "min": 25001,
    "max": 50000,
    "customer": {"send": 75, "out": 650},
    "no_customer": {
      "other": true,
      "orange": {"send": 100, "out": 700},
      "mtn": {"send": 100, "out": 700}
    }
  },
  {
    "min": 50001,
    "max": 80000,
    "customer": {"send": 75, "out": 1350},
    "no_customer": {
      "other": true,
      "orange": {"send": 150, "out": 1350},
      "mtn": {"send": 125, "out": 1350}
    }
  },
  {
    "min": 80001,
    "max": 100000,
    "customer": {"send": 100, "out": 1650},
    "no_customer": {
      "other": true,
      "orange": {"send": 200, "out": 1800},
      "mtn": {"send": 125, "out": 1800}
    }
  },
  {
    "min": 100001,
    "max": 120000,
    "customer": {"send": 100, "out": 2100},
    "no_customer": {
      "other": true,
      "orange": {"send": 200, "out": 2150},
      "mtn": {"send": 125, "out": 2150}
    }
  },
  {
    "min": 120001,
    "max": 200000,
    "customer": {"send": 100, "out": 2300},
    "no_customer": {
      "other": true,
      "orange": {"send": 300, "out": 2150},
      "mtn": {"send": 125, "out": 2150}
    }
  },
  {
    "min": 200001,
    "max": 300000,
    "customer": {"send": 100, "out": 2400},
    "no_customer": {
      "other": true,
      "orange": {"send": 300, "out": 2600},
      "mtn": {"send": 125, "out": 2600}
    }
  },
  {
    "min": 300001,
    "max": 500000,
    "customer": {"send": 100, "out": 2500},
    "no_customer": {
      "other": true,
      "orange": {"send": 400, "out": 3100},
      "mtn": {"send": 125, "out": 3100}
    }
  },
];

//========================= tchad ===================================
const td_air = {
  "send": [
    {"min": 100, "max": 2500, "customer": 50, "no_customer": 125},
    {"min": 2501, "max": 10000, "customer": 150, "no_customer": 180},
    {"min": 10001, "max": 50000, "customer": 750, "no_customer": 550},
    {"min": 50001, "max": 100000, "customer": 1000, "no_customer": 750},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1000},
    {"min": 250001, "max": 500000, "customer": 1800, "no_customer": 1500}
  ],
  "out": [
    {"min": 100, "max": 2500, "customer": 175, "no_customer": 200},
    {"min": 2501, "max": 10000, "customer": 300, "no_customer": 400},
    {"min": 10001, "max": 50000, "customer": 1300, "no_customer": 1500},
    {"min": 50001, "max": 100000, "customer": 2100, "no_customer": 2600},
    {"min": 100001, "max": 250000, "customer": 2500, "no_customer": 3000},
    {"min": 250001, "max": 500000, "customer": 3000, "no_customer": 3000}
  ]
};
/* const td_air = [
  {
    "min": 100,
    "max": 2500,
    "customer": {"send": 50, "out": 175},
    "no_customer": {"send": 125, "out": 200}
  },
  {
    "min": 2501,
    "max": 10000,
    "customer": {"send": 150, "out": 300},
    "no_customer": {"send": 180, "out": 400}
  },
  {
    "min": 10001,
    "max": 50000,
    "customer": {"send": 750, "out": 1300},
    "no_customer": {"send": 550, "out": 1500}
  },
  {
    "min": 50001,
    "max": 100000,
    "customer": {"send": 1000, "out": 2100},
    "no_customer": {"send": 750, "out": 2600}
  },
  {
    "min": 100001,
    "max": 250000,
    "customer": {"send": 1500, "out": 2500},
    "no_customer": {"send": 1000, "out": 3000}
  },
  {
    "min": 250001,
    "max": 500000,
    "customer": {"send": 1800, "out": 3000},
    "no_customer": {"send": 1500, "out": 3000}
  }
];
*/
//============================= gabon ===============================

//================================ cote d'ivoire =====================
const ci_yup_int = [
  {
    "min": 1005,
    "max": 6000,
    "customer": {"send": 250, "out": 0},
  },
  {
    "min": 6001,
    "max": 26000,
    "customer": {"send": 450, "out": 0},
  },
  {
    "min": 26001,
    "max": 52000,
    "customer": {"send": 950, "out": 0},
  },
  {
    "min": 52001,
    "max": 104000,
    "customer": {"send": 1500, "out": 0},
  },
  {
    "min": 104001,
    "max": 208000,
    "customer": {"send": 2500, "out": 0},
  },
  {
    "min": 208001,
    "max": 400000,
    "customer": {"send": 3700, "out": 0},
  },
  {
    "min": 400001,
    "max": 600000,
    "customer": {"send": 5500, "out": 0},
  },
  {
    "min": 600001,
    "max": 1000000,
    "customer": {"send": 8500, "out": 0},
  },
  {
    "min": 1000001,
    "max": 1500000,
    "customer": {"send": 8500, "out": 0},
  },
];

const ci_yup = [
  {
    "min": 200,
    "max": 5000,
    "customer": {"send": 0, "out": 150},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 5001,
    "max": 25000,
    "customer": {"send": 0, "out": 450},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 25001,
    "max": 50000,
    "customer": {"send": 0, "out": 950},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 50001,
    "max": 10000,
    "customer": {"send": 0, "out": 1900},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 100001,
    "max": 200000,
    "customer": {"send": 0, "out": 3800},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 200001,
    "max": 300000,
    "customer": {"send": 0, "out": 7500},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 300001,
    "max": 600000,
    "customer": {"send": 0, "out": 15000},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 600001,
    "max": 800000,
    "customer": {"send": 0, "out": 15000},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 800001,
    "max": 1000000,
    "customer": {"send": 0, "out": 15000},
    "no_customer": {"send": null, "out": null}
  },
  {
    "min": 1000001,
    "max": 1500000,
    "customer": {"send": 0, "out": 23000},
    "no_customer": {"send": null, "out": null}
  },
];

const cm_orange = {
  "send": [
    {"min": 50, "max": 100000, "customer": '0.5%', "no_customer": "4%"},
    {"min": 100001, "max": 1000000, "customer": 500, "no_customer": "4%"}
  ],
  "out": [
    {"min": 50, "max": 3333, "customer": 50, "no_customer": "4%"},
    {"min": 3334, "max": 233333, "customer": '1.5%', "no_customer": "4%"},
    {"min": 233334, "max": 505000, "customer": 3500, "no_customer": "4%"}
  ]
};

const cm_mtn = {
  "send": [
    {"min": 100, "max": 10000, "customer": 25, "no_customer": "4%"},
    {"min": 50, "max": 100000, "customer": '0.5%', "no_customer": "4%"},
    {"min": 100001, "max": 1000000, "customer": 500, "no_customer": "4%"}
  ],
  "out": [
    {"min": 100, "max": 2499, "customer": 50, "no_customer": "4%"},
    {"min": 2500, "max": 174999, "customer": '2%', "no_customer": "4%"},
    {"min": 175000, "max": 500000, "customer": 3500, "no_customer": "4%"}
  ]
};

const mg_air = {
  "send": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 30000, "customer": 300, "no_customer": 600},
    {"min": 30001, "max": 40000, "customer": 400, "no_customer": 600},
    {"min": 40001, "max": 50000, "customer": 600, "no_customer": 600},
    {"min": 50001, "max": 60000, "customer": 600, "no_customer": 800},
    {"min": 60001, "max": 80000, "customer": 800, "no_customer": 800},
    {"min": 80001, "max": 100000, "customer": 800, "no_customer": 800},
    {"min": 100001, "max": 150000, "customer": 1500, "no_customer": 1500},
    {"min": 150001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ],
  "out": [
    {"min": 1, "max": 1000, "customer": 100, "no_customer": 0},
    {"min": 1001, "max": 5000, "customer": 140, "no_customer": 0},
    {"min": 5001, "max": 10000, "customer": 275, "no_customer": 1000},
    {"min": 10001, "max": 20000, "customer": 550, "no_customer": 1500},
    {"min": 20001, "max": 25000, "customer": 650, "no_customer": 1800},
    {"min": 25001, "max": 30000, "customer": 1300, "no_customer": 3500},
    {"min": 30001, "max": 40000, "customer": 1300, "no_customer": 3500},
    {"min": 40001, "max": 50000, "customer": 1300, "no_customer": 3500},
    {"min": 50001, "max": 60000, "customer": 1900, "no_customer": 4500},
    {"min": 60001, "max": 80000, "customer": 1900, "no_customer": 4500},
    {"min": 80001, "max": 100000, "customer": 1900, "no_customer": 4500},
    {"min": 100001, "max": 150000, "customer": 3400, "no_customer": 9500},
    {"min": 150001, "max": 250000, "customer": 3400, "no_customer": 9500},
    {"min": 250001, "max": 500000, "customer": 4700, "no_customer": 12500},
    {"min": 500001, "max": 1000000, "customer": 8800, "no_customer": 1700},
    {"min": 1000001, "max": 2000000, "customer": 14700, "no_customer": 29000},
    {"min": 2000001, "max": 3000000, "customer": 19600, "no_customer": 37500},
    {"min": 3000001, "max": 4000000, "customer": 24500, "no_customer": 47500},
    {"min": 4000001, "max": 5000000, "customer": 29400, "no_customer": 55000},
    {"min": 5000001, "max": 6000000, "customer": 34300, "no_customer": 55000},
    {"min": 6000001, "max": 7000000, "customer": 39200, "no_customer": 55000},
    {"min": 7000001, "max": 8000000, "customer": 44100, "no_customer": 55000},
    {"min": 8000001, "max": 9000000, "customer": 49000, "no_customer": 55000},
    {"min": 9000001, "max": 10000000, "customer": 53900, "no_customer": 55000},
  ],
  "bk": [],
  "dt": []
};

const mg_ora = {
  "send": [
    {"min": 200, "max": 5000, "customer": 50, "other": 120, "no_customer": 200},
    /* {
      "min": 1001,
      "max": 5000,
      "customer": 50,
      "other": 120,
      "no_customer": 225
    },*/
    {
      "min": 5001,
      "max": 10000,
      "customer": 100,
      "other": 250,
      "no_customer": 450
    },
    {
      "min": 10001,
      "max": 20000,
      "customer": 200,
      "other": 400,
      "no_customer": 900
    },
    {
      "min": 20001,
      "max": 25000,
      "customer": 200,
      "other": 400,
      "no_customer": 900
    },
    {
      "min": 25001,
      "max": 50000,
      "customer": 400,
      "other": 880,
      "no_customer": 1900
    },
    {
      "min": 50001,
      "max": 100000,
      "customer": 800,
      "other": 1300,
      "no_customer": 2800
    },
    {
      "min": 100001,
      "max": 250000,
      "customer": 1500,
      "other": 3000,
      "no_customer": 5000
    },
    {
      "min": 250001,
      "max": 500000,
      "customer": 1500,
      "other": 4500,
      "no_customer": 6300
    },
    {
      "min": 500001,
      "max": 1000000,
      "customer": 2500,
      "other": 6900,
      "no_customer": 11500
    },
    {
      "min": 1000001,
      "max": 2000000,
      "customer": 3000,
      "other": 11500,
      "no_customer": 18000
    },
    {
      "min": 2000001,
      "max": 3000000,
      "customer": 4000,
      "other": 14000,
      "no_customer": 23000
    },
    {
      "min": 3000001,
      "max": 4000000,
      "customer": 5000,
      "other": 17600,
      "no_customer": 28000
    },
    {
      "min": 4000001,
      "max": 5000000,
      "customer": 6000,
      "other": 18600,
      "no_customer": 33000
    },
    {
      "min": 5000001,
      "max": 6000000,
      "customer": 7500,
      "other": 21000,
      "no_customer": 38000
    },
    {
      "min": 6000001,
      "max": 7000000,
      "customer": 8500,
      "other": 24000,
      "no_customer": 43000
    },
    {
      "min": 7000001,
      "max": 8000000,
      "customer": 10000,
      "other": 28000,
      "no_customer": 48000
    },
    {
      "min": 8000001,
      "max": 9000000,
      "customer": 11500,
      "other": 32000,
      "no_customer": 53000
    },
    {
      "min": 9000001,
      "max": 10000000,
      "customer": 12500,
      "other": 37000,
      "no_customer": 58000
    },
  ],
  "out": [
    {"min": 1, "max": 1000, "customer": 100, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 140, "no_customer": 140},
    {"min": 5001, "max": 10000, "customer": 275, "no_customer": 275},
    {"min": 10001, "max": 20000, "customer": 550, "no_customer": 550},
    {"min": 20001, "max": 25000, "customer": 650, "no_customer": 650},
    {"min": 25001, "max": 50000, "customer": 1300, "no_customer": 1300},
    {"min": 50001, "max": 100000, "customer": 1900, "no_customer": 1900},
    {"min": 100001, "max": 250000, "customer": 3400, "no_customer": 3400},
    {"min": 250001, "max": 500000, "customer": 4700, "no_customer": 4700},
    {"min": 500001, "max": 1000000, "customer": 8800, "no_customer": 8800},
    {"min": 1000001, "max": 2000000, "customer": 14700, "no_customer": 14700},
    {"min": 2000001, "max": 3000000, "customer": 19600, "no_customer": 19600},
    {"min": 3000001, "max": 4000000, "customer": 24500, "no_customer": 24500},
    {"min": 4000001, "max": 5000000, "customer": 29400, "no_customer": 29400},
    {"min": 5000001, "max": 6000000, "customer": 34300, "no_customer": 34300},
    {"min": 6000001, "max": 7000000, "customer": 39200, "no_customer": 39200},
    {"min": 7000001, "max": 8000000, "customer": 44100, "no_customer": 44100},
    {"min": 8000001, "max": 9000000, "customer": 49000, "no_customer": 49000},
    {"min": 9000001, "max": 10000000, "customer": 53900, "no_customer": 53900},
  ],
  "bk": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ],
  "dt": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ],
  "izy": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ]
};

const mg_mvo = {
  "send": [
    {"min": 100, "max": 1000, "customer": 50, "other": 200, "no_customer": 750},
    {
      "min": 1001,
      "max": 5000,
      "customer": 50,
      "other": 250,
      "no_customer": 750
    },
    {
      "min": 5001,
      "max": 10000,
      "customer": 100,
      "other": 500,
      "no_customer": 1400
    },
    {
      "min": 10001,
      "max": 25000,
      "customer": 200,
      "other": 1000,
      "no_customer": 1800
    },
    {
      "min": 25001,
      "max": 50000,
      "customer": 400,
      "other": 1500,
      "no_customer": 3800
    },
    {
      "min": 50001,
      "max": 100000,
      "customer": 800,
      "other": 2000,
      "no_customer": 4800
    },
    {
      "min": 100001,
      "max": 250000,
      "customer": 1500,
      "other": 3500,
      "no_customer": 10000
    },
    {
      "min": 250001,
      "max": 500000,
      "customer": 1500,
      "other": 5000,
      "no_customer": 15000
    },
    {
      "min": 500001,
      "max": 1000000,
      "customer": 2500,
      "other": 8500,
      "no_customer": 20000
    },
    {
      "min": 1000001,
      "max": 2000000,
      "customer": 3000,
      "other": 12000,
      "no_customer": 30000
    },
    {
      "min": 2000001,
      "max": 3000000,
      "customer": 4000,
      "other": 14500,
      "no_customer": 40000
    },
    {
      "min": 3000001,
      "max": 4000000,
      "customer": 5000,
      "other": 19500,
      "no_customer": 50000
    },
    {
      "min": 4000001,
      "max": 5000000,
      "customer": 6000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 5000001,
      "max": 6000000,
      "customer": 7500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 6000001,
      "max": 7000000,
      "customer": 8500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 7000001,
      "max": 8000000,
      "customer": 10000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 8000001,
      "max": 9000000,
      "customer": 11500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 9000001,
      "max": 10000000,
      "customer": 12500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 10000001,
      "max": 11000000,
      "customer": 14000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 11000001,
      "max": 12000000,
      "customer": 15000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 12000001,
      "max": 13000000,
      "customer": 16000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 13000001,
      "max": 14000000,
      "customer": 17000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 14000001,
      "max": 15000000,
      "customer": 18500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 15000001,
      "max": 16000000,
      "customer": 20000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 16000001,
      "max": 17000000,
      "customer": 21000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 17000001,
      "max": 18000000,
      "customer": 22500,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 18000001,
      "max": 19000000,
      "customer": 24000,
      "other": 24000,
      "no_customer": 60000
    },
    {
      "min": 19000001,
      "max": 20000000,
      "customer": 25000,
      "other": 24000,
      "no_customer": 60000
    },
  ],
  "out": [
    {"min": 100, "max": 1000, "customer": 100, "other": 0, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 150, "other": 0, "no_customer": 150},
    {
      "min": 5001,
      "max": 10000,
      "customer": 275,
      "other": 275,
      "no_customer": 275
    },
    {
      "min": 10001,
      "max": 20000,
      "customer": 550,
      "other": 550,
      "no_customer": 550
    },
    {
      "min": 20001,
      "max": 25000,
      "customer": 650,
      "other": 650,
      "no_customer": 650
    },
    {
      "min": 25001,
      "max": 50000,
      "customer": 1300,
      "other": 1300,
      "no_customer": 1300
    },
    {
      "min": 50001,
      "max": 100000,
      "customer": 1900,
      "other": 1900,
      "no_customer": 1900
    },
    {
      "min": 100001,
      "max": 250000,
      "customer": 3400,
      "other": 3400,
      "no_customer": 1900
    },
    {
      "min": 250001,
      "max": 500000,
      "customer": 4700,
      "other": 0,
      "no_customer": 4700
    },
    {
      "min": 500001,
      "max": 1000000,
      "customer": 8800,
      "other": 0,
      "no_customer": 8800
    },
    {
      "min": 1000001,
      "max": 2000000,
      "customer": 14700,
      "other": 0,
      "no_customer": 14700
    },
    {
      "min": 2000001,
      "max": 3000000,
      "customer": 19600,
      "other": 0,
      "no_customer": 19600
    },
    {
      "min": 3000001,
      "max": 4000000,
      "customer": 24500,
      "other": 0,
      "no_customer": 24500
    },
    {
      "min": 4000001,
      "max": 5000000,
      "customer": 29400,
      "other": 0,
      "no_customer": 29400
    },
    {
      "min": 5000001,
      "max": 6000000,
      "customer": 34300,
      "other": 0,
      "no_customer": 34300
    },
    {
      "min": 6000001,
      "max": 7000000,
      "customer": 39200,
      "other": 0,
      "no_customer": 39200
    },
    {
      "min": 7000001,
      "max": 8000000,
      "customer": 44100,
      "other": 0,
      "no_customer": 44100
    },
    {
      "min": 8000001,
      "max": 9000000,
      "customer": 49000,
      "other": 0,
      "no_customer": 49000
    },
    {
      "min": 9000001,
      "max": 10000000,
      "customer": 53900,
      "other": 0,
      "no_customer": 53900
    },
    {
      "min": 10000001,
      "max": 11000000,
      "customer": 59000,
      "other": 0,
      "no_customer": 59000
    },
    {
      "min": 11000001,
      "max": 12000000,
      "customer": 64000,
      "other": 0,
      "no_customer": 64000
    },
    {
      "min": 12000001,
      "max": 13000000,
      "customer": 69000,
      "other": 0,
      "no_customer": 69000
    },
    {
      "min": 13000001,
      "max": 14000000,
      "customer": 74000,
      "other": 0,
      "no_customer": 74000
    },
    {
      "min": 14000001,
      "max": 15000000,
      "customer": 79000,
      "other": 0,
      "no_customer": 79000
    },
    {
      "min": 15000001,
      "max": 16000000,
      "customer": 84000,
      "other": 0,
      "no_customer": 84000
    },
    {
      "min": 16000001,
      "max": 17000000,
      "customer": 89000,
      "other": 0,
      "no_customer": 89000
    },
    {
      "min": 17000001,
      "max": 18000000,
      "customer": 94000,
      "other": 0,
      "no_customer": 94000
    },
    {
      "min": 18000001,
      "max": 19000000,
      "customer": 98000,
      "other": 0,
      "no_customer": 98000
    },
    {
      "min": 19000001,
      "max": 20000000,
      "customer": 100000,
      "other": 0,
      "no_customer": 100000
    },
  ],
  "bk": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ],
  "dt": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ],
  "izy": [
    {"min": 1, "max": 1000, "customer": 50, "no_customer": 100},
    {"min": 1001, "max": 5000, "customer": 50, "no_customer": 120},
    {"min": 5001, "max": 10000, "customer": 100, "no_customer": 230},
    {"min": 10001, "max": 20000, "customer": 200, "no_customer": 400},
    {"min": 20001, "max": 25000, "customer": 300, "no_customer": 400},
    {"min": 25001, "max": 50000, "customer": 300, "no_customer": 600},
    {"min": 50001, "max": 100000, "customer": 600, "no_customer": 800},
    {"min": 100001, "max": 250000, "customer": 1500, "no_customer": 1500},
    {"min": 250001, "max": 500000, "customer": 1500, "no_customer": 1500},
    {"min": 500001, "max": 1000000, "customer": 2500, "no_customer": 2500},
    {"min": 1000001, "max": 2000000, "customer": 3000, "no_customer": 3000},
    {"min": 2000001, "max": 3000000, "customer": 3000, "no_customer": 3000},
    {"min": 3000001, "max": 4000000, "customer": 3000, "no_customer": 5000},
    {"min": 4000001, "max": 5000000, "customer": 3000, "no_customer": 3000},
    {"min": 5000001, "max": 6000000, "customer": 3000, "no_customer": 3000},
    {"min": 6000001, "max": 7000000, "customer": 3000, "no_customer": 3000},
    {"min": 7000001, "max": 8000000, "customer": 3000, "no_customer": 3000},
    {"min": 8000001, "max": 9000000, "customer": 3000, "no_customer": 3000},
    {"min": 9000001, "max": 10000000, "customer": 3000, "no_customer": 3000},
  ]
};

const cd_air_cdf = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 10.0, "max": 20000.0, "customer": "2%", "no_customer": "2%"},
    {
      "min": 20000.1,
      "max": 500000.0,
      "customer": '1.20%',
      "no_customer": "1.20%"
    },
    {
      "min": 500000.1,
      "max": 2700000.0,
      "customer": '0.75%',
      "no_customer": "0.75%"
    },
    {
      "min": 2700000.1,
      "max": 4800000.0,
      "customer": '0.65%',
      "no_customer": "0.65%"
    }
  ],
  "out": [
    {
      "min": 10.0,
      "max": 10000.0,
      "customer": "18.00%",
      "no_customer": "18.00%"
    },
    {
      "min": 10000.1,
      "max": 20000.0,
      "customer": '8.76%',
      "no_customer": "8.76%"
    },
    {
      "min": 20000.1,
      "max": 30000.0,
      "customer": '6.00%',
      "no_customer": "6.00%"
    },
    {
      "min": 30000.1,
      "max": 50000.0,
      "customer": '3.75%',
      "no_customer": "3.75%"
    },
    {
      "min": 50000.1,
      "max": 80000.0,
      "customer": '2.77%',
      "no_customer": "2.77%"
    },
    {
      "min": 80000.1,
      "max": 160000.0,
      "customer": '1.83%',
      "no_customer": "1.83%"
    },
    {
      "min": 160000.1,
      "max": 300000.0,
      "customer": '1.52%',
      "no_customer": "1.52%"
    },
    {
      "min": 300000.1,
      "max": 500000.0,
      "customer": '1.62%',
      "no_customer": "1.62%"
    },
    {
      "min": 500000.1,
      "max": 600000.0,
      "customer": '1.45%',
      "no_customer": "1.45%"
    },
    {
      "min": 600000.1,
      "max": 800000.0,
      "customer": '1.14%',
      "no_customer": "1.14%"
    },
    {
      "min": 800000.1,
      "max": 1200000.0,
      "customer": '1.00%',
      "no_customer": "1.00%"
    },
    {
      "min": 1200000.1,
      "max": 1800000.0,
      "customer": '0.93%',
      "no_customer": "0.93%"
    },
    {
      "min": 1800000.1,
      "max": 2700000.0,
      "customer": '0.85%',
      "no_customer": "0.85%"
    },
    {
      "min": 2700000.1,
      "max": 3600000.0,
      "customer": '0.82%',
      "no_customer": "0.82%"
    },
    {
      "min": 3600000.1,
      "max": 4800000.0,
      "customer": '0.80%',
      "no_customer": "0.80%"
    }
  ]
};

const cd_air_usd = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 0.1, "max": 10.0, "customer": "2%", "no_customer": "2%"},
    {"min": 10.1, "max": 200.0, "customer": '1.20%', "no_customer": "1.20%"},
    {"min": 200.1, "max": 1000.0, "customer": '0.75%', "no_customer": "0.75%"},
    {"min": 1000.1, "max": 2000.0, "customer": '0.65%', "no_customer": "0.65%"},
    {"min": 2000.1, "max": 2500.0, "customer": '0.50%', "no_customer": "0.50%"}
  ],
  "out": [
    {"min": 0.1, "max": 5.0, "customer": "17.50%", "no_customer": "17.50%"},
    {"min": 5.1, "max": 10.0, "customer": '8.70%', "no_customer": "8.70%"},
    {"min": 10.1, "max": 20.0, "customer": '5.40%', "no_customer": "5.40%"},
    {"min": 20.1, "max": 30.0, "customer": '3.24%', "no_customer": "3.24%"},
    {"min": 30.1, "max": 50.0, "customer": '2.75%', "no_customer": "2.75%"},
    {"min": 50.1, "max": 100.0, "customer": '1.75%', "no_customer": "1.75%"},
    {"min": 100.1, "max": 400.0, "customer": '5.40%', "no_customer": "1.60%"},
    {"min": 400.1, "max": 2500.0, "customer": '0.95%', "no_customer": "0.95%"}
  ]
};

const cd_ora_west_usd = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1.0, "max": 10.0, "customer": "2%", "no_customer": "2%"},
    {"min": 10.01, "max": 1000.0, "customer": '1.20%', "no_customer": "1.20%"},
    {"min": 1001, "max": 2500.0, "customer": '1.00%', "no_customer": "1.00%"},
  ],
  "out": [
    {"min": 1, "max": 5.0, "customer": "18%", "no_customer": "18%"},
    {"min": 5.01, "max": 10.0, "customer": '8.76%', "no_customer": "8.76%"},
    {"min": 10.01, "max": 20.0, "customer": '5.53%', "no_customer": "5.53%"},
    {"min": 20.01, "max": 50.0, "customer": '2.80%', "no_customer": "2.80%"},
    {"min": 50.01, "max": 100.0, "customer": '1.77%', "no_customer": "1.77%"},
    {"min": 100.01, "max": 400.0, "customer": '1.60%', "no_customer": "1.60%"},
    {"min": 400.01, "max": 2500.0, "customer": '0.95%', "no_customer": "0.95%"},
  ]
};

const cd_ora_west_cdf = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1000, "max": 25000, "customer": "2%", "no_customer": "2%"},
    {"min": 25001, "max": 2000000, "customer": '1.20%', "no_customer": "1.20%"},
    {
      "min": 2000001,
      "max": 5875000,
      "customer": '1.00%',
      "no_customer": "1.00%"
    },
  ],
  "out": [
    {"min": 1000, "max": 11750, "customer": "18%", "no_customer": "18%"},
    {"min": 11751, "max": 23500, "customer": '8.76%', "no_customer": "8.76%"},
    {"min": 23501, "max": 47000, "customer": '5.53%', "no_customer": "5.53%"},
    {"min": 47001, "max": 117500, "customer": '2.80%', "no_customer": "2.80%"},
    {"min": 117501, "max": 235000, "customer": '1.77%', "no_customer": "1.77%"},
    {"min": 235001, "max": 940000, "customer": '1.60%', "no_customer": "1.60%"},
    {
      "min": 940001,
      "max": 5875000,
      "customer": '0.95%',
      "no_customer": "0.95%"
    },
  ]
};

const cd_ora_east_usd = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1.0, "max": 10.0, "customer": "2%", "no_customer": "2%"},
    {"min": 10.01, "max": 1000.0, "customer": '1.20%', "no_customer": "1.20%"},
    {"min": 1001, "max": 2500.0, "customer": '1.00%', "no_customer": "1.00%"},
  ],
  "out": [
    {"min": 1, "max": 10, "customer": "8.76%", "no_customer": "8.76%"},
    {"min": 10.01, "max": 20.0, "customer": '5.53%', "no_customer": "5.53%"},
    {"min": 20.01, "max": 30.0, "customer": '3.24%', "no_customer": "3.24%"},
    {"min": 30.01, "max": 50.0, "customer": '2.75%', "no_customer": "2.75%"},
    {"min": 50.01, "max": 100.0, "customer": '1.75%', "no_customer": "1.75%"},
    {"min": 100.01, "max": 400.0, "customer": '1.60%', "no_customer": "1.60%"},
    {"min": 400.01, "max": 2500.0, "customer": '0.95%', "no_customer": "0.95%"},
  ]
};

const cd_ora_east_cdf = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1000, "max": 25000, "customer": "2%", "no_customer": "2%"},
    {"min": 25001, "max": 2000000, "customer": '1.20%', "no_customer": "1.20%"},
    {
      "min": 2000001,
      "max": 5875000,
      "customer": '1.00%',
      "no_customer": "1.00%"
    },
  ],
  "out": [
    {"min": 1000, "max": 23500, "customer": '8.76%', "no_customer": "8.76%"},
    {"min": 23501, "max": 47000, "customer": '5.53%', "no_customer": "5.53%"},
    {"min": 47001, "max": 70500, "customer": '3.24%', "no_customer": "3.24%"},
    {"min": 70501, "max": 117500, "customer": '2.75%', "no_customer": "2.75%"},
    {"min": 117501, "max": 235000, "customer": '1.75%', "no_customer": "1.75%"},
    {"min": 235001, "max": 940000, "customer": '1.60%', "no_customer": "1.60%"},
    {"min": 940001, "max": 5875000, "customer": '0.95%', "no_customer": "0.95%"}
  ]
};

const cd_mpesa_cdf = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1000, "max": 11250, "customer": "3%", "no_customer": "18%"},
    {"min": 11251, "max": 22500, "customer": '2%', "no_customer": "8.76%"},
    {"min": 22501, "max": 45000, "customer": '1.20%', "no_customer": "5.53%"},
    {"min": 45001, "max": 112500, "customer": '1.20%', "no_customer": "2.80%"},
    {"min": 112501, "max": 225000, "customer": '1.20%', "no_customer": "1.77%"},
    {"min": 225001, "max": 450000, "customer": '1.20%', "no_customer": -1},
    {"min": 450001, "max": 5625000, "customer": '0.90%', "no_customer": -1}
  ],
  "out": [
    {"min": 1000, "max": 11250, "customer": "18%", "no_customer": 0},
    {"min": 11251, "max": 22500, "customer": '8.76%', "no_customer": 0},
    {"min": 22501, "max": 45000, "customer": '5.53%', "no_customer": 0},
    {"min": 45001, "max": 112500, "customer": '2.80%', "no_customer": 0},
    {"min": 112501, "max": 225000, "customer": '1.77%', "no_customer": 0},
    {"min": 225001, "max": 2250000, "customer": '1.77%', "no_customer": -1},
    {"min": 2250001, "max": 5625000, "customer": '1%', "no_customer": -1}
  ]
};

const cd_mpesa_usd = {
  // pas de retrait pour les users non opérateur
  "send": [
    {"min": 1, "max": 5, "customer": "3%", "no_customer": "2%"},
    {"min": 5.01, "max": 10, "customer": '2%', "no_customer": "1.20%"},
    {"min": 10.01, "max": 20, "customer": '1.20%', "no_customer": "5.53%"},
    {"min": 20.01, "max": 50, "customer": '1.20%', "no_customer": "2.80%"},
    {"min": 50.01, "max": 100, "customer": '1.20%', "no_customer": "1.77%"},
    {"min": 100.01, "max": 200, "customer": '1.20%', "no_customer": -1},
    {"min": 200.01, "max": 2500.0, "customer": '0.90%', "no_customer": -1},
  ],
  "out": [
    {"min": 1, "max": 5, "customer": "18%", "no_customer": 0},
    {"min": 5.01, "max": 10, "customer": '8.76%', "no_customer": 0},
    {"min": 10.01, "max": 20, "customer": '5.53%', "no_customer": 0},
    {"min": 20.01, "max": 50, "customer": '2.80%', "no_customer": 0},
    {"min": 50.01, "max": 1000, "customer": "1.77%", "no_customer": 0},
    {"min": 1001, "max": 2500, "customer": '1%', "no_customer": -1},
  ]
};

const ht_mn_cash = {
  // pas de retrait pour les users non opérateur
  "send": [
    /* {"min": 20.0, "max": 99.0, "customer": 0, "no_customer": 2},
    {"min": 100.0, "max": 249.0, "customer": 0, "no_customer": 4},*/
    {"min": 20.0, "max": 249.0, "customer": 0, "no_customer": 4},
    {"min": 250.0, "max": 499.0, "customer": 6, "no_customer": 7},
    {"min": 500.0, "max": 999.0, "customer": 9, "no_customer": 10},
    {"min": 1000.0, "max": 1999.0, "customer": 25, "no_customer": 30},
    {"min": 2000.0, "max": 3999.0, "customer": 35, "no_customer": 40},
    {"min": 4000.0, "max": 7999.0, "customer": 50, "no_customer": 55},
    {"min": 8000.0, "max": 11999.0, "customer": 60, "no_customer": 70},
    {"min": 12000.0, "max": 19999.0, "customer": 70, "no_customer": 80},
    {"min": 20000.0, "max": 39999.0, "customer": 75, "no_customer": 90},
    {"min": 40000.0, "max": 59999.0, "customer": 100, "no_customer": 110},
    {"min": 60000.0, "max": 75000.0, "customer": 120, "no_customer": 125},
  ],
  "out": [
    {"min": 20.0, "max": 249.0, "customer": 0, "no_customer": 0},
    {"min": 250.0, "max": 499.0, "customer": 13, "no_customer": 0},
    {"min": 500.0, "max": 999.0, "customer": 30, "no_customer": 0},
    {"min": 1000.0, "max": 1999.0, "customer": 60, "no_customer": 0},
    {"min": 2000.0, "max": 3999.0, "customer": 105, "no_customer": 0},
    {"min": 4000.0, "max": 7999.0, "customer": 171, "no_customer": 0},
    {"min": 8000.0, "max": 11999.0, "customer": 247, "no_customer": 0},
    {"min": 12000.0, "max": 19999.0, "customer": 366, "no_customer": 0},
    {"min": 20000.0, "max": 39999.0, "customer": 629, "no_customer": 0},
    {"min": 40000.0, "max": 59999.0, "customer": 1011, "no_customer": 0},
    {"min": 60000.0, "max": 75000.0, "customer": 1368, "no_customer": 0},
  ]
};
