export const StatCard = ({
  statName,
  stat,
}: {
  statName: string;
  stat: string | null;
}) => {
  if (!stat) null;
  return (
    <div className="rounded-lg">
      <div className="bg-accent text-base-100 text-center text-md font-medium py-3 px-2 rounded-t-lg">
        {statName}
      </div>
      <div className="bg-base-100 text-center text-md py-3 px-2 rounded-b-lg">
        {stat}
      </div>
    </div>
  );
};
