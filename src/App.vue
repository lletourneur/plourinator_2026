<template>
  <div class="min-h-screen flex flex-col">
    <div class="flex-1">
      <Navigation></Navigation>
      <RouterView />
    </div>
  </div>
</template>

<script setup>
import { RouterView } from 'vue-router'
import Navigation from './layout/Navigation.vue';
</script>
