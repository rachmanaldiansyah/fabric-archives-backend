import Ijazah from "../models/IjazahModel.js";
import Users from "../models/UsersModel.js";
import { Op } from "sequelize";

export const getIjazah = async (req, res) => {
  try {
    let response;
    if (
      (req.roles === "admin", "mitra penerbit", "kesiswaan", "kepala sekolah")
    ) {
      response = await Ijazah.findAll({
        attributes: [
          "uuid",
          "no_ijazah",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
          "arsip_ijazah",
          "createdAt",
          "konfirmasi_kepsek",
          "konfirmasi_kepsekUpdatedAt",
          "konfirmasi_kesiswaan",
          "konfirmasi_kesiswaanUpdatedAt",
          "alasan_penolakan"
        ],
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Ijazah.findAll({
        attributes: [
          "uuid",
          "no_ijazah",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
          "arsip_ijazah",
          "createdAt",
          "konfirmasi_kepsek",
          "konfirmasi_kepsekUpdatedAt",
          "konfirmasi_kesiswaan",
          "konfirmasi_kesiswaanUpdatedAt",
          "alasan_penolakan"
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

export const getIjazahById = async (req, res) => {
  try {
    const ijazah = await Ijazah.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!ijazah)
      return res
        .status(404)
        .json({ msg: "Data arsip ijazah tidak dapat ditemukan!" });
    let response;
    if (req.roles === "admin") {
      response = await Ijazah.findOne({
        attributes: [
          "uuid",
          "no_ijazah",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
          "arsip_ijazah",
          "createdAt",
          "konfirmasi_kepsek",
          "konfirmasi_kepsekUpdatedAt",
          "konfirmasi_kesiswaan",
          "konfirmasi_kesiswaanUpdatedAt",
          "alasan_penolakan"
        ],
        where: {
          id: ijazah.id,
        },
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Ijazah.findOne({
        attributes: [
          "uuid",
          "no_ijazah",
          "nisn",
          "nis",
          "nama",
          "jk",
          "nama_orangtua",
          "prodi",
          "arsip_ijazah",
          "createdAt",
          "konfirmasi_kepsek",
          "konfirmasi_kepsekUpdatedAt",
          "konfirmasi_kesiswaan",
          "konfirmasi_kesiswaanUpdatedAt",
          "alasan_penolakan"
        ],
        where: {
          [Op.and]: [{ id: ijazah.id }, { userId: req.userId }],
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

export const createIjazah = async (req, res) => {
  try {
    const {
      no_ijazah,
      nisn,
      nis,
      nama,
      jk,
      nama_orangtua,
      prodi,
      arsip_ijazah,
    } = req.body;

    const newIjazah = await Ijazah.create({
      no_ijazah: no_ijazah,
      nisn: nisn,
      nis: nis,
      nama: nama,
      jk: jk,
      nama_orangtua: nama_orangtua,
      prodi: prodi,
      arsip_ijazah: arsip_ijazah,
      userId: req.userId,
    });
    res.status(201).json({
      msg: "Data arsip sertifikat berhasil disimpan!",
      data: newIjazah,
    });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const updateIjazah = async (req, res) => {
  try {
    const ijazah = await Ijazah.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!ijazah)
      return res
        .status(404)
        .json({ msg: "Data arsip ijazah tidak dapat ditemukan!" });
    const {
      no_ijazah,
      nisn,
      nis,
      nama,
      jk,
      prodi,
      nama_orangtua,
      arsip_ijazah,
      konfirmasi_kepsek,
      konfirmasi_kepsekUpdatedAt,
      konfirmasi_kesiswaan,
      konfirmasi_kesiswaanUpdatedAt,
      alasan_penolakan,
    } = req.body;
    if (
      req.roles === "admin" ||
      req.roles === "kepala sekolah" ||
      req.roles === "kesiswaan"
    ) {
      await Ijazah.update(
        {
          no_ijazah,
          nisn,
          nis,
          nama,
          jk,
          prodi,
          nama_orangtua,
          arsip_ijazah,
          konfirmasi_kepsek,
          konfirmasi_kepsekUpdatedAt,
          konfirmasi_kesiswaan,
          konfirmasi_kesiswaanUpdatedAt,
          alasan_penolakan,
        },
        {
          where: {
            id: ijazah.id,
          },
        }
      );
    } else {
      if (req.userId !== ijazah.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin" });
      await Ijazah.update(
        {
          no_ijazah,
          nisn,
          nis,
          nama,
          jk,
          prodi,
          nama_orangtua,
          arsip_ijazah,
          konfirmasi_kepsek,
          konfirmasi_kepsekUpdatedAt,
          konfirmasi_kesiswaan,
          konfirmasi_kesiswaanUpdatedAt,
          alasan_penolakan,
        },
        {
          where: {
            [Op.and]: [{ id: ijazah.id }, { userId: req.userId }],
          },
        }
      );
    }
    res.status(200).json({ msg: "Data arsip ijazah berhasil di update!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteIjazah = async (req, res) => {
  try {
    const ijazah = await Ijazah.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!ijazah)
      return res
        .status(404)
        .json({ msg: "Data arsip ijazah tidak dapat ditemukan!" });
    const {
      no_ijazah,
      nisn,
      nis,
      nama,
      jk,
      nama_orangtua,
      prodi,
      arsip_ijazah,
      konfirmasi_kepsek,
      konfirmasi_kesiswaan,
    } = req.body;
    if (req.roles === "admin") {
      await Ijazah.destroy({
        where: {
          id: ijazah.id,
        },
      });
    } else {
      if (req.userId !== ijazah.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin" });
      await Ijazah.destroy({
        where: {
          [Op.and]: [{ id: ijazah.id }, { userId: req.userId }],
        },
      });
    }
    res.status(200).json({ msg: "Data arsip ijazah berhasil di hapus!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
