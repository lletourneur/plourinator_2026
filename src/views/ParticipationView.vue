<template>
    <div class="flex max-lg:flex-col pt-4 relative">
        <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-center-top bg-cover bg-no-repeat"></div>
        <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
            <div class="flex justify-center items-center flex-col mb-8">
                <Title>ParticipatioN</Title>
                <div class="text-secondary text-xl max-lg:text-lg px-8">Aide nous à nous développer en participant</div>
            </div>
            <billet-web :is-open="true"></billet-web>
        </div>
    </div>
</template>
<script setup lang="ts">
import BilletWeb from '@/components/BilletWeb.vue'
import Title from '@/components/ui/Title.vue';
</script>
