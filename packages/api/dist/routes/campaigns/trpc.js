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
Object.defineProperty(exports, "__esModule", { value: true });
exports.campaignRouter = void 0;
const trpc_1 = require("../../trpc");
const zod_1 = require("zod");
const service_objects_1 = require("./service-objects");
exports.campaignRouter = (0, trpc_1.router)({
    getAllCampaigns: trpc_1.authedProcedure
        .input(zod_1.z.object({
        userId: zod_1.z.string().uuid(),
    }))
        .query(({ input }) => __awaiter(void 0, void 0, void 0, function* () {
        return yield (0, service_objects_1.getAllCampaigns)(input.userId);
    })),
    getCampaign: trpc_1.authedProcedure
        .input(zod_1.z.object({
        campaignId: zod_1.z.string().uuid(),
    }))
        .query(({ input }) => __awaiter(void 0, void 0, void 0, function* () {
        return yield (0, service_objects_1.getCampaign)(input.campaignId);
    })),
    getCampaignItems: trpc_1.authedProcedure
        .input(zod_1.z.object({
        campaignId: zod_1.z.string().uuid(),
    }))
        .query(({ input }) => __awaiter(void 0, void 0, void 0, function* () {
        return yield (0, service_objects_1.getCampaignItems)(input.campaignId);
    })),
});
