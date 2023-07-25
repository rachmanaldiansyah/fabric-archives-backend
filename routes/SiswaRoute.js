import express from "express";
import {
    getSiswa,
    getSiswaById,
    createSiswa,
    updateSiswa,
    deleteSiswa,
} from "../controllers/SiswaControllers.js";
import { verifyPengguna, adminOnly } from "../middleware/AuthPengguna.js";

const router = express.Router();

router.get('/siswa', verifyPengguna, adminOnly, getSiswa);
router.get('/siswa/:id', verifyPengguna, adminOnly, getSiswaById);
router.post('/siswa', verifyPengguna, adminOnly, createSiswa);
router.patch('/siswa/:id', verifyPengguna, adminOnly, updateSiswa);
router.delete('/siswa/:id', verifyPengguna, adminOnly, deleteSiswa);

export default router;