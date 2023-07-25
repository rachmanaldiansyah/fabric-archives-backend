import Users from "../models/UsersModel.js";
import argon2 from "argon2";

export const Login = async (req, res) => {
  const user = await Users.findOne({
    where: {
      email: req.body.email,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Pengguna tidak dapat ditemukan!" });
  const match = await argon2.verify(user.password, req.body.password);
  if (!match)
    return res.status(400).json({ msg: "Password salah, silahkan ulangi." });
  req.session.userId = user.uuid;
  const uuid = user.uuid;
  const nama = user.nama;
  const email = user.email;
  const roles = user.roles;
  res.status(200).json({ uuid, nama, email, roles });
};

export const Me = async (req, res) => {
  if (!req.session.userId) {
    return res.status(401).json({ msg: "Mohon lakukan login ke akun Anda." });
  }
  const user = await Users.findOne({
    attributes: ["uuid", "nama", "email", "roles"],
    where: {
      uuid: req.session.userId,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Data pengguna tidak dapat ditemukan!" });
  res.status(200).json(user);
};

export const LogOut = (req, res) => {
  req.session.destroy((err) => {
    if (err) return res.status(400).json({ msg: "Tidak dapat log out." });
    res.status(200).json({ msg: "Anda telah log out" });
  });
};
