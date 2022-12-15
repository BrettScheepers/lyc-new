import React from "react";
import { Navigate, Outlet, useNavigate } from "react-router-dom";
import logo from "../../../public/lyc_light_blue.png";

type CampaignDashboardProps = {};

const CampaignDashboard: React.FC<CampaignDashboardProps> = () => {
  const navigate = useNavigate();

  if (
    sessionStorage.getItem("user") === null ||
    JSON.parse(sessionStorage.user).user_id === null ||
    sessionStorage.getItem("accessToken") === null
  ) {
    return <Navigate to="/log-in" />;
  }

  return (
    <main className="w-full min-h-screen bg-gray-100">
      <nav className="bg-white py-4 px-6 shadow flex items-center">
        <img src={logo} alt="Love Your City Logo" className="h-14" />
        <h2 className="hidden lg:block ml-2 text-4xl font-bold">
          Love Your City
        </h2>
        <button className="ml-auto text-xl" onClick={() => navigate(-1)}>
          Go Back
        </button>
      </nav>

      <Outlet />
    </main>
  );
};

export default CampaignDashboard;
