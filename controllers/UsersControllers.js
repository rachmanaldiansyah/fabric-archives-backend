import Users from "../models/UsersModel.js";
import argon2 from "argon2"; // import depedencies untuk hashing password

export const getUsers = async (req, res) => {
  try {
    const response = await Users.findAll({
      // instruksi untuk hanya menampilkan attributes yang di minta
      attributes: ["uuid", "nama", "email", "roles", "nip", "createdAt"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getUsersById = async (req, res) => {
  try {
    const response = await Users.findOne({
      attributes: ["uuid", "nama", "email", "roles", "nip", "createdAt"],
      where: {
        uuid: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createUsers = async (req, res) => {
  const { nama, email, password, confPassword, roles, nip } = req.body;
  if (password !== confPassword)
    return res.status(400).json({
      msg: "Password dan Confirm Password Tidak Cocok, Mohon Diulangi.",
    });
  const hashPassword = await argon2.hash(password);
  try {
    await Users.create({
      nama: nama,
      email: email,
      password: hashPassword,
      roles: roles,
      nip: nip,
    });
    res.status(201).json({ msg: "Register telah berhasil!" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

export const updateUsers = async (req, res) => {
  const user = await Users.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Pengguna tidak dapat ditemukan!" });
  const { nama, email, password, confPassword, roles, nip } = req.body;
  let hashPassword;
  if (password === "" || password === null) {
    hashPassword = user.password;
  } else {
    hashPassword = await argon2.hash(password);
  }
  if (password !== confPassword)
    return res.status(400).json({
      msg: "Password dan Confirm Password Tidak Cocok, Mohon Diulangi.",
    });
  try {
    await Users.update(
      {
        nama: nama,
        email: email,
        password: hashPassword,
        roles: roles,
        nip: nip,
      },
      {
        where: {
          id: user.id,
        },
      }
    );
    res.status(200).json({ msg: "Pengguna berhasil diupdate!" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

export const deleteUsers = async (req, res) => {
  const user = await Users.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Pengguna tidak dapat ditemukan!" });
  try {
    await Users.destroy({
      where: {
        id: user.id,
      },
    });
    res.status(200).json({ msg: "Pengguna berhasil dihapus!" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
