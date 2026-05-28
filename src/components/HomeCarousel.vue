<template>
  <Carousel class="mx-24">
    <div v-for="(pic, index) in pics" :key="index" class="embla__slide">
      <img
        @click="openPhotoModal(pic.url)"
        :src="`https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/${pic.url}.jpg`"
        :class="pic.customClass"
        class="rounded-2xl h-full w-full object-cover cursor-grab active:cursor-grabbing"
        alt=""
      />
    </div>
  </Carousel>
  <div v-if="photoIsOpen" class="bg-black/80 fixed top-0 left-0 h-screen w-full z-50" @click="closePhotoModal">
      <img
        :src="`https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/${openPhoto}.jpg`"
        class="fixed left-0 top-1/2 -translate-y-1/2 w-full max-h-[80vh] object-contain"
      />
  </div>
</template>

<script setup>
import {ref} from 'vue'
import Carousel from './ui/carousel/Carousel.vue'

const photoIsOpen = ref(false);
const openPhoto = ref('');

const openPhotoModal = (photo) => {
  photoIsOpen.value = true
  openPhoto.value = photo
  document.body.style.overflow = 'hidden'
}

const closePhotoModal = () => {
  photoIsOpen.value = false
  document.body.style.overflow = 'auto'
}

const pics = ref([
  {url: 'IMG_20250809_204404_azxsel', customClass: ''},
  {url: 'IMG_5603_aav5hb', customClass: ''},
  {url: 'IMG_5635_o0vwgb', customClass: ''},
  {url: 'IMG_5696_bpl5zb', customClass: ''},
  {url: 'IMG_20250810_011039_u7okzm', customClass: ''},
  {url: 'Retouche-08_ngepjp', customClass: ''},
  {url: 'Retouche-19_fwnkef', customClass: ''},
  {url: 'Retouche-26_svcahm', customClass: ''},
  {url: 'IMG_5704_bp72kb', customClass: ''},
  {url: 'IMG_5762_zdmyfe', customClass: ''},
  {url: 'IMG_5752_ieebih', customClass: ''},
  {url: 'IMG_5766_qerogc', customClass: ''},
  {url: 'IMG_20250809_204414_jw6ucf', customClass: ''},
  {url: 'IMG_5783_y1h1bq', customClass: ''},
  {url: 'Photo10_18_d3awaz', customClass: ''},
  {url: 'IMG_1452_zfro07', customClass: ''},
  {url: '1755530825347_kiqktr', customClass: ''},
  {url: 'PXL_20250810_011150661.MP_r3u25d', customClass: ''},
  {url: 'IMG_1404_z5vkic', customClass: ''},
  {url: 'axel-friteuse', customClass: ''},
  {url: 'axel-biere', customClass: ''},
  {url: 'Retouche-13_iihlh7', customClass: ''},
  {url: 'IMG_5711_wim6is', customClass: ''},
  {url: 'blind-test', customClass: ''}
])
</script>

<style scoped>
.embla__slide {
  flex: 0 0 25%;
  min-width: 0;
  padding-left: 20px;
  height: 300px;
  display: flex;
  justify-content: center;
  align-items: center;
}

@media screen and (max-width: 1024px) {
  .embla__slide {
    flex: 0 0 100%;
    height: 250px;
  }
}
</style>