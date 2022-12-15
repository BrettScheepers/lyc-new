import { useParams } from "react-router-dom";
import { Loader } from "../../../shared/Loader";
import { trpc } from "../../../utils/trpc";
import { StatCard } from "../../../shared/StatCard";
import { useMediaQuery } from "react-responsive";

const ShowCampaign = () => {
  const isMobile = useMediaQuery({ query: "(max-width: 400px)" });
  const { campaignId = "" } = useParams();
  const { data: campaignData } = trpc.campaigns.getCampaign.useQuery({
    campaignId,
  });
  const { data: campaignItems } = trpc.campaigns.getCampaignItems.useQuery({
    campaignId,
  });

  if (!campaignData) {
    return <Loader />;
  }

  return (
    <div className="sm:mx-auto sm:w-full sm:max-w-6xl p-6 grid gap-4">
      <div className="w-full">
        <div className="text-center py-2">
          <h1 className="text-8xl font-bold text-primary">
            {campaignData.campaign_title}
          </h1>
        </div>
        <div className="text-center py-2">
          <h2 className="font-bold text-3xl py-2">Description</h2>
          <p className="text-lg py-1">{campaignData.campaign_desc}</p>
        </div>
      </div>
      <div className="divider"></div>
      <div className="w-full">
        <div className="overflow-x-auto">
          <table className={`table ${"table-compact"} w-full`}>
            <thead>
              <tr>
                <th>Name</th>
                <th>Campaign Goal</th>
                <th>Donations Total</th>
                <th>Outstanding</th>
              </tr>
            </thead>
            <tbody>
              {campaignItems?.map((el, i) => {
                const pledgedTotal =
                  el.donations
                    ?.map((el) => el.donations_pledged)
                    .reduce((partialSum, a) => partialSum + a, 0) || 0;
                return (
                  <tr key={i}>
                    <td>{el.campaign_item_name}</td>
                    <td>{el.campaign_item_quantity}</td>
                    <td>{pledgedTotal}</td>
                    <td>{el.campaign_item_quantity - pledgedTotal}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>

      <div className="divider"></div>
      <div className="grid xs:grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 ">
        <StatCard
          statName={"End Date"}
          stat={
            campaignData.end_date?.toLocaleDateString("en-GB", {
              year: "numeric",
              month: "long",
              day: "numeric",
            }) || "Indefinite"
          }
        />
        <StatCard
          statName={"Delivery Address"}
          stat={campaignData.delivery_address}
        />
        <StatCard
          statName={"Campaign Owner Email"}
          stat={campaignData.users.email}
        />
        <StatCard
          statName={"Contact Number"}
          stat={campaignData.contact_number}
        />
      </div>
    </div>
  );
};

export default ShowCampaign;
