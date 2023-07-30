<script lang="ts">
    
  import type { PageData } from "./$types";
  export let data: PageData;
  const {user} = data;
</script>

<div class="container mx-auto p-8 space-y-8 min-h-screen">
  <h1>Welcome to unbothered.</h1>
  <h2>Testing TRPC with PRISMA on VERCEL</h2>
  <h3>Found user: {user?.full_name} {user?.accountType} {user?.createdAt}</h3>
</div>
