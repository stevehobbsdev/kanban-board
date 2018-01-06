<template>
  <div id="app">
    
    <div class="page-header">
      <h1>Kanban Board</h1>
      <p class="lead">An example of a Kanban board, written in VueJS</p>
    </div>
    
    <menu-bar></menu-bar>

    <router-view/>
  </div>
</template>

<script>
import MenuBar from '@/components/MenuBar'

export default {
  name: 'app',
  components: {
    'menu-bar': MenuBar
  }
};
</script>

<style>
.page-header h1 {
  font-weight: 300;
}
</style>
