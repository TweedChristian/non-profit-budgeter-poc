import type { PageLoad } from "./$types";
import { trpc } from "$lib/trpc/client";

export const load = (async () => {
  return trpc().testProcedure.query();
}) satisfies PageLoad;
