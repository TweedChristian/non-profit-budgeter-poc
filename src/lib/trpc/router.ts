// @filename: server.ts
import { initTRPC } from '@trpc/server';

const t = initTRPC.create();

interface User {
  id: string;
  name: string;
}

const userList: User[] = [
  {
    id: '1',
    name: 'KATT',
  },
];

export const appRouter = t.router({
  users: t.procedure
    .query(() => ({users: userList})),
});

export type AppRouter = typeof appRouter;