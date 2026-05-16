<template>
    <div class="flex justify-center items-center flex-col mb-8 max-xl:mb-4">
        <Title>{{ title }}</Title>
        <div class="text-secondary text-xl max-lg:text-lg font-bold text-center px-8">
            <slot></slot>
        </div>
    </div>
</template>

<script setup>
import Title from './Title.vue';

const props = defineProps({
  title: {
    type: String,
    required: true
  }
})

</script>