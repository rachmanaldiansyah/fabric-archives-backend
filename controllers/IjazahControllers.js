import Ijazah from "../models/IjazahModel.js";
import Users from "../models/UsersModel.js";
import { Op } from "sequelize";

export const getIjazah = async (req, res) => {
  try {
    let response;
    if (req.roles === "admin") {
      response = await Ijazah.findAll({
        attributes: ["uuid", "no_ijazah", "arsip_ijazah"],
        include: [
          {
            model: Users,
            attributes: ["nama", "email"],
          },
        ],
      });
    } else {
      response = await Ijazah.findAll({
        attributes: ["uuid", "no_ijazah", "arsip_ijazah"],
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
        attributes: ["uuid", "no_ijazah", "arsip_ijazah"],
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
        attributes: ["uuid", "no_ijazah", "arsip_ijazah"],
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
  const { no_ijazah, arsip_ijazah } = req.body;
  try {
    await Ijazah.create({
      no_ijazah: no_ijazah,
      arsip_ijazah: arsip_ijazah,
      userId: req.userId,
    });
    res.status(201).json({ msg: "Data arsip ijazah berhasil disimpan!" });
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
    const { no_ijazah, arsip_ijazah } = req.body;
    if (req.roles === "admin") {
      await Products.update(
        { no_ijazah, arsip_ijazah },
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
        { no_ijazah, arsip_ijazah },
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
    const { no_ijazah, arsip_ijazah } = req.body;
    if (req.roles === "admin") {
      await Ijazah.destroy({
        where: {
          id: ijazah.id,
        },
      });
    } else {
      if (req.userId !== product.userId)
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
