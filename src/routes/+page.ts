import type { PageLoad } from "./$types";
import { trpc } from "$lib/trpc/client";

export const load = (async (event) => {
  return trpc(event).getDevUser.query();
}) satisfies PageLoad;
