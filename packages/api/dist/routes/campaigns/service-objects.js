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
exports.getCampaignItems = exports.getCampaign = exports.getAllCampaigns = void 0;
const client_1 = require(".prisma/client");
const prisma = new client_1.PrismaClient();
const getAllCampaigns = (userId) => __awaiter(void 0, void 0, void 0, function* () {
    return yield prisma.$queryRaw `
  select
    campaigns.campaign_id,
    campaigns.campaign_title,
    campaigns.end_date,
    coalesce(
        (select sum(campaign_item_quantity)
          from campaign_items
          join campaigns
            on campaigns.campaign_id = campaign_items.campaign_id
          where campaigns.campaign_owner_id::text = ${userId})
      , 0)::int as campaign_items_item_quantity,
    coalesce(
        (select sum(donations_pledged)
          from donations
          join campaign_items
            on donations.campaign_item_id = campaign_items.campaign_item_id
          join campaigns
            on campaigns.campaign_id = campaign_items.campaign_id
          where campaigns.campaign_owner_id::text = ${userId})
      , 0)::int as donations_item_quantity
  from campaigns
  where campaigns.campaign_owner_id::text = ${userId};
`;
});
exports.getAllCampaigns = getAllCampaigns;
const getCampaign = (campaignId) => __awaiter(void 0, void 0, void 0, function* () {
    return yield prisma.campaigns.findUnique({
        where: {
            campaign_id: campaignId,
        },
        include: {
            users: {
                select: {
                    username: true,
                    email: true,
                },
            },
        },
    });
});
exports.getCampaign = getCampaign;
const getCampaignItems = (campaignId) => __awaiter(void 0, void 0, void 0, function* () {
    return yield prisma.campaign_items.findMany({
        where: {
            campaign_id: campaignId,
        },
        include: {
            donations: true,
        },
    });
});
exports.getCampaignItems = getCampaignItems;
