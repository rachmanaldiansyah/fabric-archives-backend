import Siswa from "../models/SiswaModel.js";
import Users from "../models/UsersModel.js";
import { Op } from "sequelize";

export const getSiswa = async (req, res) => {
  try {
    let response;
    if (req.roles === "admin") {
      response = await Siswa.findAll({
        attributes: [
          "uuid",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
        ],
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Siswa.findAll({
        attributes: [
          "uuid",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
        ],
        where: {
          userId: req.userId,
        },
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getSiswaById = async (req, res) => {
  try {
    const siswa = await Siswa.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!siswa)
      return res.status(404).json({ msg: "Data siswa tidak ditemukan." });
    let response;
    if (req.roles === "admin") {
      response = await Siswa.findOne({
        attributes: [
          "uuid",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
        ],
        where: {
          id: siswa.id,
        },
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Siswa.findOne({
        attributes: [
          "uuid",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
        ],
        where: {
          [Op.and]: [{ id: siswa.id }, { userId: req.userId }],
        },
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getSiswaByNISN = async (req, res) => {
  try {
    const siswa = await Siswa.findOne({
      where: {
        nisn: req.params.nisn,
      },
    });

    if (!siswa) {
      return res.status(404).json({ msg: "Data siswa tidak dapat ditemukan!" });
    }

    res.status(200).json(siswa);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getSiswaByNIS = async (req, res) => {
  try {
    const siswa = await Siswa.findOne({
      where: {
        nis: req.params.nis,
      },
    });

    if (!siswa) {
      return res.status(404).json({ msg: "Data siswa tidak dapat ditemukan!" });
    }

    res.status(200).json(siswa);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createSiswa = async (req, res) => {
  const { nisn, nis, nama, jk, nama_orangtua, prodi } = req.body;
  try {
    await Siswa.create({
      nisn: nisn,
      nis: nis,
      nama: nama,
      jk: jk,
      nama_orangtua: nama_orangtua,
      prodi: prodi,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Data siswa berhasil ditambahkan." });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const updateSiswa = async (req, res) => {
  try {
    const siswa = await Siswa.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!siswa)
      return res.status(404).json({
        msg: "Data siswa tidak dapat ditemukan.",
      });
    const { nisn, nis, nama, jk, nama_orangtua, prodi } = req.body;
    if (req.roles === "admin") {
      await Siswa.update(
        {
          nisn,
          nis,
          nama,
          jk,
          nama_orangtua,
          prodi,
        },
        {
          where: {
            id: siswa.id,
          },
        }
      );
    } else {
      if (req.userId !== siswa.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin." });
      await Siswa.update(
        {
          nisn,
          nis,
          nama,
          jk,
          nama_orangtua,
          prodi,
        },
        {
          where: {
            [Op.and]: [{ id: siswa.id }, { userId: req.userId }],
          },
        }
      );
    }
    res.status(200).json({
      msg: "Data siswa berhasil diupdate.",
    });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteSiswa = async (req, res) => {
  try {
    const siswa = await Siswa.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!siswa)
      return res.status(404).json({
        msg: "Data siswa tidak dapat ditemukan.",
      });
    const { nisn, nis, nama, jk, nama_orangtua, prodi } = req.body;
    if (req.roles === "admin") {
      await Siswa.destroy({
        where: {
          id: siswa.id,
        },
      });
    } else {
      if (req.userId !== siswa.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin." });
      await Siswa.destroy({
        where: {
          [Op.and]: [{ id: siswa.id }, { userId: req.userId }],
        },
      });
    }
    res.status(200).json({ msg: "Data siswa berhasil dihapus!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
