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
exports.authedProcedure = exports.publicProcedure = exports.router = exports.middleware = exports.t = exports.createContext = void 0;
const server_1 = require("@trpc/server");
const superjson_1 = __importDefault(require("superjson"));
const validate_1 = require("./middleware/validate");
const createContext = ({ req, res, }) => {
    var _a;
    const access_token = (_a = req.headers.authorization) === null || _a === void 0 ? void 0 : _a.split(" ")[1];
    const decoded = (0, validate_1.validateToken)(access_token);
    return {
        req,
        res,
        user: decoded,
    };
};
exports.createContext = createContext;
exports.t = server_1.initTRPC.context().create({
    transformer: superjson_1.default,
    errorFormatter({ shape }) {
        return Object.assign(Object.assign({}, shape), { data: Object.assign(Object.assign({}, shape.data), { stack: undefined, path: undefined }) });
    },
});
exports.middleware = exports.t.middleware;
exports.router = exports.t.router;
exports.publicProcedure = exports.t.procedure;
const isAuthed = exports.t.middleware(({ ctx, next }) => __awaiter(void 0, void 0, void 0, function* () {
    if (!ctx.user) {
        throw new server_1.TRPCError({
            code: "UNAUTHORIZED",
            message: "Not authorized to access resources",
        });
    }
    return next({
        ctx: {
            user: ctx.user,
        },
    });
}));
exports.authedProcedure = exports.t.procedure.use(isAuthed);
