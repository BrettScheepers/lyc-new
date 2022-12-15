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
exports.createUser = exports.findUser = void 0;
const client_1 = require(".prisma/client");
const server_1 = require("@trpc/server");
const bcrypt_1 = __importDefault(require("bcrypt"));
const prisma = new client_1.PrismaClient();
const findUser = (email) => __awaiter(void 0, void 0, void 0, function* () {
    return yield prisma.users.findUnique({
        where: {
            email: email,
        },
    });
});
exports.findUser = findUser;
const createUser = (data) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const hashedPassword = yield bcrypt_1.default.hash(data.password, 10);
        return yield prisma.users.create({
            data: {
                email: data.email,
                username: data.username,
                password: hashedPassword,
            },
        });
    }
    catch (error) {
        if (error instanceof client_1.Prisma.PrismaClientKnownRequestError) {
            if (error.code === "P2002") {
                throw new server_1.TRPCError({
                    code: "CONFLICT",
                    message: `The email: '${data.email}' is already in use. Please choose another.`,
                });
            }
        }
        throw new server_1.TRPCError({
            code: "INTERNAL_SERVER_ERROR",
            message: "Something went wrong. Please try again later.",
        });
    }
});
exports.createUser = createUser;
