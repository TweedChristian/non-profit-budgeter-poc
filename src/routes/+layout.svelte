<script lang="ts">
  import Sidenav from "$lib/components/sidenav.svelte";
  import { AppShell } from '@skeletonlabs/skeleton';
  import "../app.css";
  import '../theme.postcss';
  import '@skeletonlabs/skeleton/styles/all.css';
</script>

<AppShell >
  <svelte:fragment slot="sidebarLeft"><Sidenav/></svelte:fragment>
  <slot></slot>
</AppShell>

