<script setup lang="ts">
import HomeCarousel from '@/components/HomeCarousel.vue';
import HomeSection from '@/components/HomeSection.vue';

</script>

<template>
    <div class="flex flex-col">
        <HomeSection title="Un festival<br/>pas comme les autres" button="Découvrir les activités" background="secondary">
            Musique, bières artisanales, jeux délirants et bonne humeur : le plourinator c'est un festival
            local et indépendant créé par des potes pour rassembler une communautée de fêtards bienveillants
            dans un cadre magique. Ici, on déconnecte, on partage et on profite d'un moment unique.
        </HomeSection>
        <HomeSection title="Voici Plourinator" title2="Protecteur de la forêt et patron des fêtards" button="Infos pratiques" background="primary" revert>
            Mi fée, mi cochon 100% bière artisanale. Il veille sur le festival, la bonne ambiance et les nuits sans fin.
        </HomeSection>
        <div class="photos relative">
            <div class="min-w-full min-h-full bg-[url(../img/green_bg.png)] bg-cover bg-no-repeat absolute -z-10 top-0 left-0"></div>
            <div class="text-primary font-bold text-4xl max-lg:text-2xl uppercase text-center my-4">Retour en images</div>
            <div class="container mx-auto mb-8 relative">
                <HomeCarousel></HomeCarousel>
            </div>
        </div>
    </div>
</template>

<style>
    svg text {
        text-anchor: middle;
    }
</style>