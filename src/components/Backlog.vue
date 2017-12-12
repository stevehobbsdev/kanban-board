<template>
  <div class="backlog-view">
    <new-item></new-item>
  </div>
</template>

<script>
import NewItemForm from './NewItemForm';

export default {
  name: 'Backlog',
  components: {
    'new-item': NewItemForm
  }
};
</script>