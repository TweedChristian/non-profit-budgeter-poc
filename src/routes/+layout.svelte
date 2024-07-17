

<AppShell>
  <svelte:fragment slot="sidebarLeft"><Sidenav></Sidenav></svelte:fragment>
  <slot></slot>
</AppShell>

<script>import Sidenav from "$lib/components/sidenav.svelte";
import { AppShell } from "@skeletonlabs/skeleton";
import "../app.css";
import "../theme.postcss";
import "@skeletonlabs/skeleton/styles/all.css";</script>