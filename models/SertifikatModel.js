import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./UsersModel.js";
import Siswa from "./SiswaModel.js";

const { DataTypes } = Sequelize;
const Sertifikat = db.define(
  "sertifikat",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    no_sertifikat: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    nis: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    nama: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    jk: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    keahlian: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    arsip_sertifikat: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    konfirmasi_kepsek: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
      defaultValue: "False",
    },
    konfirmasi_mitra: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
      defaultValue: "False",
    },
    konfirmasi_kepsekUpdatedAt: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    konfirmasi_mitraUpdatedAt: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    konfirmasi_uploadToBlockchain: {
      type: DataTypes.DATE,
      allowNull: true,
    },
    alasan_penolakan: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
      defaultValue: "False",
    },
    userId: {
      type: DataTypes.INTEGER,
      allowNull: true,
      validate: {
        notEmpty: true,
      },
    },
    siswaId: {
      type: DataTypes.INTEGER,
      allowNull: true,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
    timestamps: true,
    updatedAt: false,
    beforeUpdate: (instance, options) => {
      if (instance.changed("konfirmasi_kepsek")) {
        instance.setDataValue("konfirmasi_kepsekUpdatedAt", new Date());
      }
      if (instance.changed("konfirmasi_mitra")) {
        instance.setDataValue("konfirmasi_mitraUpdatedAt", new Date());
      }
    },
  }
);

Users.hasMany(Sertifikat);
Sertifikat.belongsTo(Users, { foreignKey: "userId" });

Siswa.hasMany(Sertifikat);
Sertifikat.belongsTo(Siswa, { foreignKey: "siswaId" });

export default Sertifikat;
