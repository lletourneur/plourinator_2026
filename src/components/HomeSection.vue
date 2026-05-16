<template>
    <div class="w-full flex item-center justify-center relative">
        <div class="min-w-full min-h-full absolute -z-10 top-0 left-0"
        :class="backgroundColor"></div>
        <div class="container flex py-8 gap-8 max-lg:flex-col max-lg:px-4" :class="{'flex-row-reverse' : revert}">
            <div class="lg:w-1/2 flex flex-col justify-center">
                <div class="text-primary font-bold text-4xl max-lg:text-2xl uppercase" v-html="title"></div>
                <div v-if="title2" class="text-secondary font-bold text-lg">{{ title2 }}</div>
                <div class="my-4">
                    <slot></slot>
                </div>
                <Button v-if="button" :primary="background === 'primary'">{{ button }}</Button>
            </div>
            <div class="lg:w-1/2">
                <img src="https://res.cloudinary.com/dhskmqesn/image/upload/v1743015116/qpufmvzcxjovch9psohd.jpg" class="max-h-87.5 w-full object-cover rounded-2xl" />
            </div>
        </div>
    </div>
</template>

<script setup>
import {computed} from 'vue'
import Button from './ui/Button.vue';

const backgroundColor = computed(() => {
  if (props.background === 'primary')
    return 'bg-linear-to-tr to-[#FFE5FE] from-[#e5b3e3]'

  if (props.background === 'secondary')
    return "bg-[url('../img/green_bg.png')] bg-cover bg-no-repeat"

  return ''
})


const props = defineProps({
  title: {
    type: String,
    required: true
  },
  title2: {
    type: String,
    required: false
  },
  background: {
    type: String,
    required: true
  },
  revert: {
    type: Boolean,
    required: false
  },
  button: {
    type: String,
    required: false
  }
})
</script>