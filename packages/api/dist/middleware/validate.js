"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateToken = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
function validateToken(authToken) {
    if (authToken === undefined)
        return;
    return jsonwebtoken_1.default.verify(authToken, process.env.ACCESS_TOKEN);
}
exports.validateToken = validateToken;
