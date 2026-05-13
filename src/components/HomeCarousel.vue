<template>
  <Carousel class="mx-24">
    <div v-for="(url, index) in pics" :key="index" class="embla__slide">
      <img :src="url" class="rounded-2xl max-h-42 min-h-42 max-lg:h-62.5 w-full object-cover cursor-grab active:cursor-grabbing" alt="" />
    </div>
  </Carousel>
</template>

<script setup>
import { ref } from 'vue'
import Carousel from './ui/carousel/Carousel.vue';

const pics = ref([
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/xygmkitbe1vjbnldvfyo.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/lzqmnrzrsnxiq1dvhjqe.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/n0i5fnv9zk5pkumvchmp.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/fpipehcxfuzljc0y8fay.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/p24e6cb5ihc1scwdmwb4.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/qpufmvzcxjovch9psohd.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/epaix4a1l76vzcsljzti.jpg',
  'https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/h1o58ogdpyc5ceijspws.jpg'
])
</script>

<style scoped>
.embla__slide {
  flex: 0 0 25%;
  min-width: 0;
  padding-left: 20px;
}
@media screen  and (max-width: 1024px) {
  .embla__slide {
    flex: 0 0 100%;
  }
}
</style>