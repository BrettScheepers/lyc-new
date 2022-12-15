import { TRPCError } from "@trpc/server";
import { z } from "zod";
import bcrypt from "bcrypt";
import { token } from "../../lib/token";
import { router, publicProcedure } from "../../trpc";
import { createUser, findUser } from "./service-objects";

const createValidator = z.object({
  email: z.string().email(),
  username: z.string(),
  password: z.string(),
});

export type CreateValidator = z.infer<typeof createValidator>;

export const usersRouter = router({
  logIn: publicProcedure
    .input(
      z.object({
        email: z.string().email(),
        password: z.string(),
      })
    )
    .mutation(async ({ input }) => {
      const user = await findUser(input.email);

      if (!user)
        throw new TRPCError({
          code: "NOT_FOUND",
          message: "User not found.",
        });
      if (!(await bcrypt.compare(input.password, user.password)))
        throw new TRPCError({
          code: "UNAUTHORIZED",
          message: "Invalid Password.",
        });

      const truncUser = { ...user, created_at: undefined, password: undefined };

      return {
        accessToken: token({ ...truncUser }),
        user: { ...truncUser },
      };
    }),
  create: publicProcedure.input(createValidator).mutation(async ({ input }) => {
    const user = await createUser(input);

    const truncUser = { ...user, created_at: undefined, password: undefined };

    return {
      accessToken: token({ ...truncUser }),
      user: { ...truncUser },
    };
  }),
});
