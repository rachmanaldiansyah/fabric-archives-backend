import express from "express";
import {
    deleteUsers,
    updateUsers,
    createUsers,
    getUsersById,
    getUsers,
} from "../controllers/UsersControllers.js";

const router = express.Router();

router.get('/users', getUsers);
router.get('/users/:id', getUsersById);
router.post('/users', createUsers);
router.patch('/users/:id', updateUsers);
router.delete('/users/:id', deleteUsers);

export default router;