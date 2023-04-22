<script lang="ts">
  import "../app.css";
  import Sidenav from "./sidenav.svelte";

  export let sidenavOpen = false;
</script>

<Sidenav bind:isOpen={sidenavOpen}/>
<slot />

