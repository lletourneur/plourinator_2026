<script setup>
import { watch } from 'vue'
import useEmblaCarousel from 'embla-carousel-vue'
import Autoplay from 'embla-carousel-autoplay'
import { ChevronLeft } from 'lucide-vue-next'
import { ChevronRight } from 'lucide-vue-next'

const [emblaRef, emblaApi] = useEmblaCarousel(
  { loop: true, align: 'start' },
  [Autoplay({ delay: 4000 })]
)

let autoplayTimeout = null

function pauseAutoplayTemporarily() {
  const autoplay = emblaApi.value?.plugins()?.autoplay
  if (!autoplay) return

  // stop autoplay immédiatement
  autoplay.stop()

  // reset timer si l'utilisateur spam les boutons
  clearTimeout(autoplayTimeout)

  autoplayTimeout = setTimeout(() => {
    autoplay.play()
  }, 2000)
}

const goToPrev = () => {
  if (!emblaApi.value) return
  pauseAutoplayTemporarily()
  emblaApi.value.scrollPrev()
}

const goToNext = () => {
  if (!emblaApi.value) return
  pauseAutoplayTemporarily()
  emblaApi.value.scrollNext()
}

watch(emblaApi, (api) => {
  if (!api) return
  api.plugins().autoplay?.play()
})
</script>

<template>
  <div class="embla">
    <div class="embla__viewport" ref="emblaRef">
      <div class="embla__container">
        <slot></slot>
      </div>
    </div>

    <button class="embla__prev absolute left-7 top-1/2 -translate-y-1/2 w-10 h-10
    rounded-full flex items-center justify-center cursor-pointer bg-primary" @click="goToPrev">
      <ChevronLeft color="#FFF"></ChevronLeft>
    </button>
    <button class="embla__next absolute right-7 top-1/2 -translate-y-1/2 w-10 h-10
    rounded-full flex items-center justify-center cursor-pointer bg-primary" @click="goToNext">
      <ChevronRight color="#FFF"></ChevronRight>
    </button>
  </div>
</template>

<style scoped>
.embla__viewport {
  overflow: hidden;
}

.embla__container {
  display: flex;
  touch-action: pan-y pinch-zoom;
  margin-left: calc(20px * -1);
}

</style>