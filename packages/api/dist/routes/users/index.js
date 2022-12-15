"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const bcrypt_1 = __importDefault(require("bcrypt"));
const token_1 = require("../../lib/token");
const express_1 = __importDefault(require("express"));
const client_1 = require(".prisma/client");
const router = express_1.default.Router();
const prisma = new client_1.PrismaClient();
router.post("/", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const hashedPassword = yield bcrypt_1.default.hash(req.body.password, 10);
        const user = yield prisma.users.create({
            data: {
                email: req.body.email,
                username: req.body.username,
                password: hashedPassword,
            },
        });
        return res.status(200).json({
            accessToken: (0, token_1.token)({
                user_id: user.user_id,
                username: user.username,
                email: user.email,
            }),
            user: {
                user_id: user.user_id,
                username: user.username,
                email: user.email,
            },
        });
    }
    catch (err) {
        if (err.message.includes("Unique constraint failed on the fields: (`username`)")) {
            return res
                .status(400)
                .json({ error: "Username already taken. Please use another." });
        }
        if (err.message.includes("Unique constraint failed on the fields: (`email`)")) {
            return res
                .status(400)
                .json({ error: "Email already taken. Please use another." });
        }
        return res
            .status(500)
            .json({ error: "Error occured. Please try again later." });
    }
}));
exports.default = router;
