<template>
  <div class="card">
      <h3 class="card-header">{{ title }}</h3>
      <div class="card-body">
          <div v-for="item in items" :key="item.id">
              <item :item="item"></item>
          </div>
      </div>
      <div class="card-footer text-muted">
          {{itemCount}}
      </div>
  </div>
</template>

<script>
import TaskLaneItem from './TaskLaneItem';

export default {
  name: 'TaskLane',
  props: ['items', 'title'],
  components: {
    item: TaskLaneItem
  },
  computed: {
    itemCount() {
      if (!this.items) return '';
      if (this.items.length === 1) return '1 task';
      return `${this.items.length} tasks`;
    }
  }
};
</script>
