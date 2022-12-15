import { createTRPCReact, httpLink } from "@trpc/react-query";
import { inferRouterOutputs } from "@trpc/server";
import superjson from "superjson";
import type { AppRouter } from "../../../api/src/server";

export const trpc = createTRPCReact<AppRouter>();

export const trpcClient = trpc.createClient({
  transformer: superjson,
  links: [
    httpLink({
      url: "http://localhost:5000/trpc",
      headers() {
        return {
          authorization: `Bearer ${sessionStorage?.accessToken || ""}`,
        };
      },
    }),
  ],
});

export type RouterOutput = inferRouterOutputs<AppRouter>;
