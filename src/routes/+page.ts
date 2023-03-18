import type { PageLoad } from './$types';
import {trpc} from "$lib/trpc/client";


export const load = (async (event) => {
  const users = await trpc(event).users.query(); 
  return { users };
}) satisfies PageLoad;