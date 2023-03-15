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

const appRouter = t.router({
  users: t.procedure
    .query(() => {
      return userList;
    }),
});

export type AppRouter = typeof appRouter;