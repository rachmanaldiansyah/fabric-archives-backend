import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./UsersModel.js";
import Siswa from "./SiswaModel.js";

const { DataTypes } = Sequelize;
const Ijazah = db.define(
  "ijazah",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    no_ijazah: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    arsip_ijazah: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    userId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    siswaId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
  }
);

Users.hasMany(Ijazah);
Ijazah.belongsTo(Users, { foreignKey: "userId" });

Siswa.hasMany(Ijazah);
Ijazah.belongsTo(Siswa, { foreignKey: "siswaId" });

export default Ijazah;
