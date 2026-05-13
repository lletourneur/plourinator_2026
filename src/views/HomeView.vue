<script setup lang="ts">
import HomeCarousel from '@/components/HomeCarousel.vue';
import HomeSection from '@/components/HomeSection.vue';

</script>

<template>
    <div class="flex flex-col">
        <div class="hero w-full flex items-center justify-center pt-24 max-lg:pt-26 relative">
            <div class="min-w-full min-h-full bg-[url(../img/hero2.png)] bg-cover bg-no-repeat absolute -z-10 top-0 left-0 opacity-80 bg-bottom"></div>
            <div class="h-full">
                <div class="flex flex-col items-center font-bold font-title text-shadow-lg">
                    <h1 class="text-7xl max-lg:text-4xl text-primary">PlourinatoR</h1>
                    <span class="text-4xl max-lg:text-xl text-secondary">Dark fairy editioN</span>
                </div>
                <div class="leading-5 text-center text-primary text-xl max-lg:text-lg my-4">
                    <span class="font-bold">Entrez dans la foret interdite..</span>
                    <div class="font-medium">la fête commence a la tombée de la nuit</div>
                </div>
                <div class="text-primary font-title font-bold relative flex flex-col items-center justify-center h-32.5 max-lg:h-24 text-3xl max-lg:text-xl mb-2">
                    <img src="../img/branch.png" class="absolute left-1/2 -top-1 h-32.5 max-lg:h-24 -translate-x-1/2"/>
                    <span>7-8 août</span>
                    <span>2026</span>
                </div>
                <div class="flex justify-center items-center mb-8">
                    <div class="px-8 py-2 uppercase border-2 border-[#A48D55] rounded-lg font-bold
                    bg-linear-to-b from-[#FBCE6E] to-[#D9A74D] cursor-pointer flex items-center">
                        <img src="../img/icons/ticket.png" class="w-4 h-4 inline-block mr-3" />participer
                    </div>
                </div>
            </div>
            <img src="../img/logo_self.png" class="w-72 ml-4 max-lg:hidden"/>
        </div>
        <HomeSection title="Un festival<br/>pas comme les autres" button="Découvrir les activités">
            Musique, bières artisanales, jeux délirants et bonne humeur : le plourinator c'est un festival
            local et indépendant créé par des potes pour rassembler une communautée de fêtards bienveillants
            dans un cadre magique. Ici, on déconnecte, on partage et on profite d'un moment unique.
        </HomeSection>
        <HomeSection title="Voici Plourinator" title2="Protecteur de la forêt et patron des fêtards" button="Infos pratiques" primary revert>
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