<template>
    <div class="flex max-lg:flex-col pt-4 relative">
        <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-cover bg-no-repeat
        max-lg:min-h-screen max-lg:h-auto max-lg:w-screen max-lg:bg-position-[center_top]"></div>
        <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
            <PageTitle title="Infos pratiqueS">Retrouve toutes les infos importantes ici</PageTitle>
            <HomeSection title="Un festival<br/>pas comme les autres">
                Musique, bières artisanales, jeux délirants et bonne humeur : le plourinator c'est un festival
                local et indépendant créé par des potes pour rassembler une communautée de fêtards bienveillants
                dans un cadre magique. Ici, on déconnecte, on partage et on profite d'un moment unique.
            </HomeSection>
            <HomeSection title="Un festival<br/>pas comme les autres" revert>
                Musique, bières artisanales, jeux délirants et bonne humeur : le plourinator c'est un festival
                local et indépendant créé par des potes pour rassembler une communautée de fêtards bienveillants
                dans un cadre magique. Ici, on déconnecte, on partage et on profite d'un moment unique.
            </HomeSection>
            <HomeSection title="Un festival<br/>pas comme les autres">
                Musique, bières artisanales, jeux délirants et bonne humeur : le plourinator c'est un festival
                local et indépendant créé par des potes pour rassembler une communautée de fêtards bienveillants
                dans un cadre magique. Ici, on déconnecte, on partage et on profite d'un moment unique.
            </HomeSection>
        </div>
    </div>
</template>

<script setup>
import HomeSection from '@/components/HomeSection.vue';
import PageTitle from '@/components/ui/PageTitle.vue';

</script>