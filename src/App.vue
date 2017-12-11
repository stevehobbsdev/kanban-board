<template>
  <div id="app">
    
    <div class="page-header">
      <h1>Kanban Board</h1>
      <p class="lead">An example of a Kanban board, written in VueJS</p>
    </div>

    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'app'
};
</script>

<style>
.page-header h1 {
  font-weight: 300;
}
</style>