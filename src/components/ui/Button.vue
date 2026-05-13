<template>
    <div class="px-8 py-2 uppercase border-2 rounded-lg font-bold cursor-pointer flex w-fit"
    :class="primary ? 'text-primary border-primary' : 'text-secondary border-secondary'">
        <slot></slot> <ChevronRight></ChevronRight>
    </div>
</template>

<script setup>
import { ChevronRight } from 'lucide-vue-next';

const props = defineProps({
  primary: {
    type: Boolean,
    required: false
  },
})
</script>