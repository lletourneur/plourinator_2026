<template>
    <div class="px-8 py-2 uppercase border-2 rounded-lg font-bold cursor-pointer flex w-fit"
    :class="buttonColor">
        <slot></slot>
    </div>
</template>

<script setup>
import {computed} from 'vue'

const buttonColor = computed(() => {
  if (props.color === 'primary')
    return 'text-primary border-primary'

  if (props.color === 'secondary')
    return "text-secondary border-secondary"

  if (props.color === 'tertiary')
    return "text-white border-primary bg-primary"

  return 'text-primary border-primary'
})

const props = defineProps({
  color: {
    type: String,
    required: false
  },
})
</script>