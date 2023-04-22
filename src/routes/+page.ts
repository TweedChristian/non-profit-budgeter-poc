import type { PageLoad } from "./$types";

export const load = (async () => {
  return {testVal: "foobar"};
}) satisfies PageLoad;
