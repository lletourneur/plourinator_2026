<template>
    <div class="flex max-lg:flex-col pt-4 relative">
        <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-cover bg-no-repeat max-lg:bg-position-[center_top]"></div>
        <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
            <PageTitle title="ParticipatioN"></PageTitle>
            <billet-web :is-open="true"></billet-web>
        </div>
    </div>
</template>
<script setup lang="ts">
import BilletWeb from '@/components/BilletWeb.vue'
import PageTitle from '@/components/ui/PageTitle.vue';
</script>
