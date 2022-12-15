import { inferAsyncReturnType, initTRPC, TRPCError } from "@trpc/server";
import * as trpcExpress from "@trpc/server/adapters/express";
import superjson from "superjson";
import { validateToken } from "./middleware/validate";

export const createContext = ({
  req,
  res,
}: trpcExpress.CreateExpressContextOptions) => {
  const access_token = req.headers.authorization?.split(" ")[1];

  const decoded = validateToken(access_token);

  return {
    req,
    res,
    user: decoded,
  };
};
type Context = inferAsyncReturnType<typeof createContext>;

export const t = initTRPC.context<Context>().create({
  transformer: superjson,
  errorFormatter({ shape }) {
    return {
      ...shape,
      data: {
        ...shape.data,
        stack: undefined,
        path: undefined,
      },
    };
  },
});

export const middleware = t.middleware;
export const router = t.router;
export const publicProcedure = t.procedure;

const isAuthed = t.middleware(async ({ ctx, next }) => {
  if (!ctx.user) {
    throw new TRPCError({
      code: "UNAUTHORIZED",
      message: "Not authorized to access resources",
    });
  }
  return next({
    ctx: {
      user: ctx.user,
    },
  });
});

export const authedProcedure = t.procedure.use(isAuthed);
