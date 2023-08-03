import express from "express";
import {
  getIjazah,
  getIjazahById,
  createIjazah,
  updateIjazah,
  deleteIjazah,
} from "../controllers/IjazahControllers.js";
import { verifyPengguna, adminOnly } from "../middleware/AuthPengguna.js";

const router = express.Router();

router.get("/ijazah", verifyPengguna, getIjazah);
router.get("/ijazah/:id", verifyPengguna, getIjazahById);
router.post("/ijazah", verifyPengguna, adminOnly, createIjazah);
router.patch("/ijazah/:id", verifyPengguna, updateIjazah);
router.delete("/ijazah/:id", verifyPengguna, adminOnly, deleteIjazah);

export default router;
