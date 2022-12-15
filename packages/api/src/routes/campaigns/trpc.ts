import { router, authedProcedure } from "../../trpc";
import { z } from "zod";
import {
  getAllCampaigns,
  getCampaign,
  getCampaignItems,
} from "./service-objects";

export const campaignRouter = router({
  getAllCampaigns: authedProcedure
    .input(
      z.object({
        userId: z.string().uuid(),
      })
    )
    .query(async ({ input }) => {
      return await getAllCampaigns(input.userId);
    }),
  getCampaign: authedProcedure
    .input(
      z.object({
        campaignId: z.string().uuid(),
      })
    )
    .query(async ({ input }) => {
      return await getCampaign(input.campaignId);
    }),
  getCampaignItems: authedProcedure
    .input(
      z.object({
        campaignId: z.string().uuid(),
      })
    )
    .query(async ({ input }) => {
      return await getCampaignItems(input.campaignId);
    }),
});
