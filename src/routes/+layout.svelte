<script>
  import Sidenav from "$lib/components/sidenav.svelte";
  import { AppShell } from "@skeletonlabs/skeleton";
  import "../app.css";
  import "../theme.postcss";
</script>

<!-- TODO: Migrate to Custom layouts https://next.skeleton.dev/docs/design/layouts -->
<AppShell>
  <svelte:fragment slot="sidebarLeft"><Sidenav></Sidenav></svelte:fragment>
  <slot></slot>
</AppShell>
