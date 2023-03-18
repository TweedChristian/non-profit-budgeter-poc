import { PrismaClient } from '@prisma/client';
import type { inferAsyncReturnType } from '@trpc/server';

export async function createContext() {
  const prisma = new PrismaClient();
  return {
    prisma,
  };
}

export type Context = inferAsyncReturnType<typeof createContext>;