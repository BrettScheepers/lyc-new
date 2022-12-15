import { PrismaClient, Prisma } from ".prisma/client";
import { TRPCError } from "@trpc/server";
import bcrypt from "bcrypt";
import type { CreateValidator } from "./trpc";

const prisma = new PrismaClient();

export const findUser = async (email: string) =>
  await prisma.users.findUnique({
    where: {
      email: email,
    },
  });

export const createUser = async (data: CreateValidator) => {
  try {
    const hashedPassword = await bcrypt.hash(data.password, 10);
    return await prisma.users.create({
      data: {
        email: data.email,
        username: data.username,
        password: hashedPassword,
      },
    });
  } catch (error) {
    if (error instanceof Prisma.PrismaClientKnownRequestError) {
      if (error.code === "P2002") {
        throw new TRPCError({
          code: "CONFLICT",
          message: `The email: '${data.email}' is already in use. Please choose another.`,
        });
      }
    }

    throw new TRPCError({
      code: "INTERNAL_SERVER_ERROR",
      message: "Something went wrong. Please try again later.",
    });
  }
};
