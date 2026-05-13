<template>
  <div class="flex max-lg:flex-col mt-24">
    <div class="flex flex-col container mx-auto">
        <div class="text-5xl font-title font-bold text-primary text-center mb-8">ParticipatioN</div>
      <billet-web :is-open="true"></billet-web>
      <img src="https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/h1o58ogdpyc5ceijspws.jpg" class="rounded mt-4 lg:w-full object-cover shadow-[10px_10px_20px_0_rgba(0,0,0,0.3)]" />
    </div>
  </div>
  
</template>
<script setup lang="ts">
import BilletWeb from '@/components/BilletWeb.vue'
</script>
