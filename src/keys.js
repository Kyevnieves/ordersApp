module.exports = {
  database: {
    host: "srv-captain--kyevdb-db:3306",
    user: "root",
    password: "Fuhrer?*2720",
    database: "database_orders",
    ssl: {
      rejectUnauthorized: false,
    },
  },
};
console.log("object");
/* 
  LOCALHOST
   database: {
    host: "localhost",
    user: "root",
    password: "Fuhrer?*12",
    database: "database_orders",
   }



PLANETSCALE
database: {
    host: "us-east.connect.psdb.cloud",
    user: "8anxj3juqfzqmkb70l3w",
    password: "pscale_pw_DtH5amhzl8RVcpzelN1Kx97yNLrdIaUIdN5QwPKPFzW",
    database: "expressdb",
    ssl: {
      rejectUnauthorized: false,
    },
  },
*/
