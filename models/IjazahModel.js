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
    nisn: {
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
    nama_orangtua: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    prodi: {
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
    konfirmasi_kepsek: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
      defaultValue: "False",
    },
    konfirmasi_kesiswaan: {
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
    konfirmasi_kesiswaanUpdatedAt: {
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
      }
    }
  },
  {
    freezeTableName: true,
    timestamps: true,
    updatedAt: false,
    beforeUpdate: (instance, options) => {
      if (instance.changed("konfirmasi_kepsek")) {
        instance.setDataValue("konfirmasi_kepsekUpdatedAt", new Date());
      }
      if (instance.changed("konfirmasi_kesiswaan")) {
        instance.setDataValue("konfirmasi_kesiswaanUpdatedAt", new Date());
      }
    },
  }
);

Users.hasMany(Ijazah);
Ijazah.belongsTo(Users, { foreignKey: "userId" });

Siswa.hasMany(Ijazah);
Ijazah.belongsTo(Siswa, { foreignKey: "siswaId" });

export default Ijazah;