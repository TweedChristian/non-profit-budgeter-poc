<script>
  export let isOpen = false;
</script>

<p>Testing Sidenav</p>
<button on:click={() => (isOpen = !isOpen)}>Testing boolean</button>
<p>{isOpen}</p>