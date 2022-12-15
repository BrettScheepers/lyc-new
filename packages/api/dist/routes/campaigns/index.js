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
const express_1 = __importDefault(require("express"));
const client_1 = require(".prisma/client");
const validate_1 = require("../../middleware/validate");
const service_objects_1 = require("./service-objects");
const router = express_1.default.Router();
const prisma = new client_1.PrismaClient();
router.get("/:userId", validate_1.validToken, (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { userId } = req.params;
    try {
        const campaigns = yield (0, service_objects_1.getAllCampaigns)(userId);
        return res.status(200).json({ campaigns: campaigns });
    }
    catch (error) {
        console.log(error);
        return res
            .status(500)
            .json({ error: "Error occured. Please try again later." });
    }
}));
router.get("/:campaignId", validate_1.validToken, (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const campaign = yield prisma.campaigns.findUnique({
            where: {
                campaign_id: req.params.campaignId,
            },
            include: {
                users: {
                    select: {
                        username: true,
                    },
                },
            },
        });
        return res.status(200).json({ campaign: campaign });
    }
    catch (error) {
        return res
            .status(500)
            .json({ error: "Error occured. Please try again later." });
    }
}));
exports.default = router;
