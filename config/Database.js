import { Sequelize } from "sequelize";

const db = new Sequelize("db_arsip_fullstack", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
