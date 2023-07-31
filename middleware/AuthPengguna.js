import Users from "../models/UsersModel.js";

export const verifyPengguna = async (req, res, next) => {
  if (!req.session.userId) {
    return res.status(401).json({ msg: "Mohon login ke akun Anda!" });
  }
  const user = await Users.findOne({
    where: {
      uuid: req.session.userId,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Pengguna tidak dapat ditemukan!" });
  req.userId = user.id;
  req.roles = user.roles;
  next();
};

export const adminOnly = async (req, res, next) => {
  const user = await Users.findOne({
    where: {
      uuid: req.session.userId,
    },
  });
  if (!user)
    return res.status(404).json({ msg: "Pengguna tidak dapat ditemukan" });
  if (user.roles !== "admin")
    return res.status(403).json({ msg: "Hanya dapat diakses oleh admin!" });
  next();
};
