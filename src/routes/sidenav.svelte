<script>
  export let mewhenthe = false;
</script>

<p>Testing Sidenav</p>
<button on:click={() => (mewhenthe = !mewhenthe)}>Testing boolean</button>
<p>{mewhenthe}</p>