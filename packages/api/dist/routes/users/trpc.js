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
exports.usersRouter = void 0;
const server_1 = require("@trpc/server");
const zod_1 = require("zod");
const bcrypt_1 = __importDefault(require("bcrypt"));
const token_1 = require("../../lib/token");
const trpc_1 = require("../../trpc");
const service_objects_1 = require("./service-objects");
const createValidator = zod_1.z.object({
    email: zod_1.z.string().email(),
    username: zod_1.z.string(),
    password: zod_1.z.string(),
});
exports.usersRouter = (0, trpc_1.router)({
    logIn: trpc_1.publicProcedure
        .input(zod_1.z.object({
        email: zod_1.z.string().email(),
        password: zod_1.z.string(),
    }))
        .mutation(({ input }) => __awaiter(void 0, void 0, void 0, function* () {
        const user = yield (0, service_objects_1.findUser)(input.email);
        if (!user)
            throw new server_1.TRPCError({
                code: "NOT_FOUND",
                message: "User not found.",
            });
        if (!(yield bcrypt_1.default.compare(input.password, user.password)))
            throw new server_1.TRPCError({
                code: "UNAUTHORIZED",
                message: "Invalid Password.",
            });
        const truncUser = Object.assign(Object.assign({}, user), { created_at: undefined, password: undefined });
        return {
            accessToken: (0, token_1.token)(Object.assign({}, truncUser)),
            user: Object.assign({}, truncUser),
        };
    })),
    create: trpc_1.publicProcedure.input(createValidator).mutation(({ input }) => __awaiter(void 0, void 0, void 0, function* () {
        const user = yield (0, service_objects_1.createUser)(input);
        const truncUser = Object.assign(Object.assign({}, user), { created_at: undefined, password: undefined });
        return {
            accessToken: (0, token_1.token)(Object.assign({}, truncUser)),
            user: Object.assign({}, truncUser),
        };
    })),
});
