import express from "express";
import {
  getSertifikat,
  getSertifikatById,
  createSertifikat,
  updateSertifikat,
  deleteSertifikat,
} from "../controllers/SertifikatControllers.js";
import { verifyPengguna, adminOnly } from "../middleware/AuthPengguna.js";

const router = express.Router();

router.get("/sertifikat", verifyPengguna, getSertifikat);
router.get("/sertifikat/:id", verifyPengguna, adminOnly, getSertifikatById);
router.post("/sertifikat", verifyPengguna, adminOnly, createSertifikat);
router.patch("/sertifikat/:id", verifyPengguna, adminOnly, updateSertifikat);
router.delete("/sertifikat/:id", verifyPengguna, adminOnly, deleteSertifikat);

export default router;
