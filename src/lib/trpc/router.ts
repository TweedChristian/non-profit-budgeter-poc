// @filename: server.ts
import prisma from "$lib/prisma";
import {
  initTRPC,
  type inferRouterInputs,
  type inferRouterOutputs,
} from "@trpc/server";
import SuperJSON from "superjson";

const t = initTRPC.create({transformer: SuperJSON });

export const appRouter = t.router({
  testProcedure: t.procedure.query(async () => {
    return { funny: "foo bar" };
  }),
  getDevUser: t.procedure.query(async () => {
    try {
      const user = await prisma.user.findFirst({
        where: {
          full_name: "dev dev dev",
        },
      });
      return { user };
    }
    catch (e) {
      console.log(e);
      return null;
    }
  }),
});

export type AppRouter = typeof appRouter;
export type RouterInputs = inferRouterInputs<AppRouter>;
export type RouterOutputs = inferRouterOutputs<AppRouter>;
