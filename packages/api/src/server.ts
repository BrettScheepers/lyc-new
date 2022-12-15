import express, { json } from "express";
import cors from "cors";
import * as trpcExpress from "@trpc/server/adapters/express";

import { router, createContext } from "./trpc";
import { campaignRouter } from "./routes/campaigns/trpc";
import { usersRouter } from "./routes/users/trpc";

const app = express();
const port = process.env.PORT || 5000;
const appRouter = router({
  campaigns: campaignRouter,
  users: usersRouter,
});

app.use(json());
app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);
app.use(
  "/trpc",
  trpcExpress.createExpressMiddleware({
    router: appRouter,
    createContext,
  })
);

export type AppRouter = typeof appRouter;

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
