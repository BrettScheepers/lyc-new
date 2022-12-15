import { PrismaClient } from ".prisma/client";

const prisma = new PrismaClient();

export type AllCampaignsType = {
  campaign_id: string;
  campaign_title: string;
  end_date: string;
  campaign_items_item_quantity: number;
  donations_item_quantity: number;
};

export const getAllCampaigns = async (
  userId: string
): Promise<AllCampaignsType[]> =>
  await prisma.$queryRaw`
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

export const getCampaign = async (campaignId: string) =>
  await prisma.campaigns.findUnique({
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

export const getCampaignItems = async (campaignId: string) =>
  await prisma.campaign_items.findMany({
    where: {
      campaign_id: campaignId,
    },
    include: {
      donations: true,
    },
  });
