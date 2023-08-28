import express from "express";
import {
  getSiswa,
  getSiswaById,
  createSiswa,
  updateSiswa,
  deleteSiswa,
  getSiswaByNISN,
  getSiswaByNIS,
} from "../controllers/SiswaControllers.js";
import { verifyPengguna, adminOnly } from "../middleware/AuthPengguna.js";

const router = express.Router();

router.get("/siswa", verifyPengguna, getSiswa);
router.get("/siswa/:id", verifyPengguna, getSiswaById);
router.get("/siswa/nisn/:nisn", verifyPengguna, getSiswaByNISN);
router.get("/siswa/nomor_induk/:nis", verifyPengguna, getSiswaByNIS);
router.post("/siswa", verifyPengguna, adminOnly, createSiswa);
router.patch("/siswa/:id", verifyPengguna, adminOnly, updateSiswa);
router.delete("/siswa/:id", verifyPengguna, adminOnly, deleteSiswa);

export default router;
