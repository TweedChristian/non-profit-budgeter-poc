<script>
    import ChevronLeft from "$lib/icons/chevron-left.svelte";
</script>

<nav class="bg-gray-green-dark fixed top-0 z-25 inset-y-0 left-0 h-full p-5 w-52">
  <div class="mb-20 flex justify-between">
    <p class="font-bold text-xl">unbothered.</p>
    <ChevronLeft className="fill-accent-gray"></ChevronLeft>
  </div>
  <div class="flex flex-col justify-between">
    <div>
      <p class="uppercase text-accent-gray text-sm">Menu</p>

    </div>
    <div>
      <p class="uppercase text-accent-gray text-sm">Options</p>
    </div>
  </div>
</nav>
<!-- <div role="presentation" class="fixed top-0 left-52 z-50 w-full h-full bg-black/50" on:click={() => (isOpen = !isOpen)}/> -->

