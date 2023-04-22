<script lang="ts">
  import "../app.css";
    import Sidenav from "./sidenav.svelte";

  export let mewhenthe = false;
</script>

<div class="">
  <h1 class="text-3xl font-bold underline">TESTING TAILWIND</h1>
  <Sidenav bind:mewhenthe/>
  <slot />
</div>
