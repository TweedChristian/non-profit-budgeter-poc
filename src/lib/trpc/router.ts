// @filename: server.ts
import prisma from "$lib/prisma";
import {
  initTRPC,
  type inferRouterInputs,
  type inferRouterOutputs,
} from "@trpc/server";
import SuperJSON from "superjson";
import { z } from "zod";

const t = initTRPC.create({ transformer: SuperJSON });

export const appRouter = t.router({
  users: t.procedure.query(async () => {
    return await prisma.user.findMany();
  }),
  addUser: t.procedure
    .input(z.object({ full_name: z.string() }))
    .mutation(async (req) => {
      const full_name = req.input.full_name;
      await prisma.user.create({
        data: {
          full_name,
          email: `test${Math.random()}@test.com`,
        },
      });

      return {
        success: true,
      };
    }),
});

export type AppRouter = typeof appRouter;
export type RouterInputs = inferRouterInputs<AppRouter>;
export type RouterOutputs = inferRouterOutputs<AppRouter>;
