<script lang="ts">
  import { env } from '$env/dynamic/public';
  import {trpc} from '$lib/trpc/client'
  import type { PageData } from './$types';

  export let data: PageData;
  let users = data.users;

  const addUser = async () => {
    trpc().addUser.mutate({full_name: 'test name'});

    users = await (await trpc().users.query());
  };

</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

<button on:click={addUser}>Add User</button>
{#each users as user}
  <div>{user.id} {user.full_name}</div>
{/each}
