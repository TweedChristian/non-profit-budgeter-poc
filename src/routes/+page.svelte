<script lang="ts">
  import type { PageData } from "./$types";

  export let data: PageData;
  const {user} = data;
</script>
<h2>Testing TRPC with PRISMA on VERCEL</h2>
<h3>Found user: {user?.full_name} {user?.accountType} {user?.createdAt}</h3>
