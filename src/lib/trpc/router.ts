// @filename: server.ts
import { PrismaClient } from '@prisma/client';
import { initTRPC } from '@trpc/server';
import {z} from "zod";

import type { Context } from './context';

const t = initTRPC.context<Context>().create();

const db = new PrismaClient();
db.$connect();

export const appRouter = t.router({
  users: t.procedure
    .query(async () => {
      return await db.user.findMany();
    }),
  addUser: t.procedure.input(z.object({full_name: z.string()})).mutation(async req => {
    const full_name = req.input.full_name;
    await db.user.create({data: {
      full_name,
      email: `test${Math.random()}@test.com`,
    }});

    return {
      success: true,
    };
  })
});

export type AppRouter = typeof appRouter;