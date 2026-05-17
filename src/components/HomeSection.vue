<template>
  <div class="w-full flex item-center justify-center relative">
    <div class="min-w-full min-h-full absolute -z-10 top-0 left-0"
         :class="backgroundColor"></div>
    <div class="container flex py-8 gap-8 max-lg:flex-col max-lg:px-4" :class="{'flex-row-reverse' : revert}">
      <div class="lg:w-1/2 flex flex-col justify-center">
        <div class="text-primary font-bold text-4xl max-lg:text-2xl uppercase text-center" v-html="title"></div>
        <div v-if="title2" class="text-secondary font-bold text-lg">{{ title2 }}</div>
        <div class="my-4">
          <slot></slot>
        </div>
        <Button v-if="button" :primary="background === 'primary'" @click="clickBtn">{{ button }}</Button>
      </div>
      <div class="lg:w-1/2">
        <img :src="`https://res.cloudinary.com/dhskmqesn/image/upload/v1779026445/${picture}.jpg`"
             :class="customClass ?? 'max-h-87.5 w-full object-cover rounded-2xl'" :alt="picture"/>
      </div>
    </div>
  </div>
</template>

<script setup>
import {computed, defineEmits} from 'vue'
import Button from './ui/Button.vue';
import {useRouter} from 'vue-router'

const router = useRouter()

const $emits = defineEmits(['clickBtn']);

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
    required: false
  },
  revert: {
    type: Boolean,
    required: false
  },
  button: {
    type: String,
    required: false
  },
  page: {
    type: String,
    required: false
  },
  picture: {
    type: String,
    required: true
  },
  customClass: {
    type: String,
    required: false
  }
})

function clickBtn() {
  router.push({name: props.page});
}
</script>