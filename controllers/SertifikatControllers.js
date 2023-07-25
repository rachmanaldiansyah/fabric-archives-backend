import Sertifikat from "../models/SertifikatModel.js";
import Users from "../models/UsersModel.js";
import { Op } from "sequelize";

export const getSertifikat = async (req, res) => {
  try {
    let response;
    if (req.roles === "admin") {
      response = await Sertifikat.findAll({
        attributes: ["uuid", "no_sertifikat", "arsip_sertifikat"],
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Sertifikat.findAll({
        attributes: ["uuid", "no_sertifikat", "arsip_sertifikat"],
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

export const getSertifikatById = async (req, res) => {
  try {
    const sertifikat = await Sertifikat.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!sertifikat)
      return res
        .status(404)
        .json({ msg: "Data arsip sertifikat tidak dapat ditemukan!" });
    let response;
    if (req.roles === "admin") {
      response = await Sertifikat.findOne({
        attributes: ["uuid", "no_sertifikat", "arsip_sertifikat"],
        where: {
          id: sertifikat.id,
        },
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Sertifikat.findOne({
        attributes: ["uuid", "no_sertifikat", "arsip_sertifikat"],
        where: {
          [Op.and]: [{ id: sertifikat.id }, { userId: req.userId }],
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

export const createSertifikat = async (req, res) => {
  const { no_sertifikat, arsip_sertifikat } = req.body;
  try {
    await Sertifikat.create({
      no_sertifikat: no_sertifikat,
      arsip_sertifikat: arsip_sertifikat,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Data arsip sertifikat berhasil disimpan!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const updateSertifikat = async (req, res) => {
  try {
    const sertifikat = await Sertifikat.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!sertifikat)
      return res
        .status(404)
        .json({ msg: "Data arsip sertifikat tidak dapat ditemukan!" });
    const { no_sertifikat, arsip_sertifikat } = req.body;
    if (req.roles === "admin") {
      await Sertifikat.update(
        { no_sertifikat, arsip_sertifikat },
        {
          where: {
            id: sertifikat.id,
          },
        }
      );
    } else {
      if (req.userId !== sertifikat.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin" });
      await Sertifikat.update(
        { no_sertifikat, arsip_sertifikat },
        {
          where: {
            [Op.and]: [{ id: sertifikat.id }, { userId: req.userId }],
          },
        }
      );
    }
    res.status(200).json({ msg: "Data arsip sertifikat berhasil di update!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteSertifikat = async (req, res) => {
  try {
    const sertifikat = await Sertifikat.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!sertifikat)
      return res
        .status(404)
        .json({ msg: "Data arsip sertifikat tidak dapat ditemukan!" });
    const { no_sertifikat, arsip_sertifikat } = req.body;
    if (req.roles === "admin") {
      await Sertifikat.destroy({
        where: {
          id: sertifikat.id,
        },
      });
    } else {
      if (req.userId !== product.userId)
        return res
          .status(403)
          .json({ msg: "Akses tertolak, otoritas hanya untuk admin" });
      await Sertifikat.destroy({
        where: {
          [Op.and]: [{ id: sertifikat.id }, { userId: req.userId }],
        },
      });
    }
    res.status(200).json({ msg: "Data arsip sertifikat berhasil di hapus!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
