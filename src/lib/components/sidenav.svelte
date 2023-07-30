<script lang="ts">
  import AlignRight from "$lib/icons/align-right.svelte";
  import Calculator from "$lib/icons/calculator.svelte";
  import Save from "$lib/icons/save.svelte";
  import Users from "$lib/icons/users.svelte";
  import User from "$lib/icons/user.svelte";
  import { AppRail, AppRailAnchor, AppRailTile } from "@skeletonlabs/skeleton";
  import Settings from "$lib/icons/settings.svelte";
    import HelpCircle from "$lib/icons/help-circle.svelte";

  let currentTile: number = 0;
</script>

<nav class="h-full bg-surface-800">
  <AppRail>
    <svelte:fragment slot="lead">
      <AppRailAnchor href="/"><span>unbothered.</span></AppRailAnchor>
    </svelte:fragment>
    <AppRailAnchor
      bind:group={currentTile}
      name="tile-1"
      value={0}
      title="tile-1"
    >
      <svelte:fragment slot="lead"
        ><Calculator className="w-20 stroke-white" /></svelte:fragment
      >
      <span>Budget</span>
    </AppRailAnchor>
    <AppRailTile
      bind:group={currentTile}
      name="tile-1"
      value={1}
      title="tile-1"
    >
      <svelte:fragment slot="lead"
        ><Save className="w-20 stroke-white" /></svelte:fragment
      >
      <span>Versions</span>
    </AppRailTile>
    <AppRailTile
      bind:group={currentTile}
      name="tile-1"
      value={2}
      title="tile-1"
    >
      <svelte:fragment slot="lead"
        ><Users className="w-20 stroke-white" /></svelte:fragment
      >
      <span>Users</span>
    </AppRailTile>
    <AppRailTile
      bind:group={currentTile}
      name="tile-1"
      value={3}
      title="tile-1"
    >
      <svelte:fragment slot="lead"
        ><AlignRight className="w-20 stroke-white" /></svelte:fragment
      >
      <span>Chart of Accounts</span>
    </AppRailTile>
    <!-- --- -->
    <svelte:fragment slot="trail">
      <AppRailAnchor href="/" title="Profile"
        ><svelte:fragment slot="lead"
          ><User className="w-20 stroke-white" /></svelte:fragment
        ><span>Profile</span></AppRailAnchor
      >
      <AppRailAnchor href="/" title="Settings"
        ><svelte:fragment slot="lead"
          ><Settings className="w-20 stroke-white" /></svelte:fragment
        ><span>Settings</span></AppRailAnchor
      >

      <AppRailAnchor href="/" title="Support"
        ><svelte:fragment slot="lead"
          ><HelpCircle className="w-20 stroke-white" /></svelte:fragment
        ><span>Support</span></AppRailAnchor
      >
    </svelte:fragment>
  </AppRail>
</nav>
