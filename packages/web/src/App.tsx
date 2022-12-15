import { BrowserRouter, Routes, Route } from "react-router-dom";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { SnackbarProvider } from "notistack";
import Home from "./routes/home/Home";
import Landing from "./routes/home/landing/Landing";
import LogIn from "./routes/home/log-in/LogIn";
import SignUp from "./routes/home/sign-up/SignUp";
import LearnMore from "./routes/home/learn-more/LearnMore";
import CampaignDashboard from "./routes/campaign-dashboard/CampaignDashboard";
import AllCampaigns from "./routes/campaign-dashboard/campaigns/Campaigns";
import ShowCampaign from "./routes/campaign-dashboard/show/ShowCampaign";
import { trpc, trpcClient } from "./utils/trpc";

const queryClient = new QueryClient();

function App() {
  return (
    <SnackbarProvider
      dense
      anchorOrigin={{
        vertical: "top",
        horizontal: "right",
      }}
    >
      <trpc.Provider client={trpcClient} queryClient={queryClient}>
        <QueryClientProvider client={queryClient}>
          <BrowserRouter>
            <Routes>
              <Route path="/" element={<Home />}>
                <Route path="/" element={<Landing />} />
                <Route path="/log-in" element={<LogIn />} />
                <Route path="/sign-up" element={<SignUp />} />
                <Route path="/learn-more" element={<LearnMore />} />
              </Route>
              <Route path="/campaigns" element={<CampaignDashboard />}>
                <Route path="/campaigns" element={<AllCampaigns />} />
                <Route
                  path="/campaigns/:campaignId/show"
                  element={<ShowCampaign />}
                />
              </Route>
            </Routes>
          </BrowserRouter>
        </QueryClientProvider>
      </trpc.Provider>
    </SnackbarProvider>
  );
}

export default App;
