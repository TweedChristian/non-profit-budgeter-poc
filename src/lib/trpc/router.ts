// @filename: server.ts
import {
  initTRPC,
  type inferRouterInputs,
  type inferRouterOutputs,
} from "@trpc/server";
import SuperJSON from "superjson";

const t = initTRPC.create({transformer: SuperJSON });

export const appRouter = t.router({
  testProcedure: t.procedure.query(async () => {
    return {funny: "foo bar"};
  }),
});

export type AppRouter = typeof appRouter;
export type RouterInputs = inferRouterInputs<AppRouter>;
export type RouterOutputs = inferRouterOutputs<AppRouter>;
