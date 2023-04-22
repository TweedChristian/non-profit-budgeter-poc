<script lang="ts">
  import type { PageData } from "./$types";

  export let data: PageData;
  const a = data.funny;
</script>

<h1>Welcome to SvelteKit</h1>
<h2>Testing TRPC on VERCEL {a}</h2>
<p>
  Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation {a}
</p>
