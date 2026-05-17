<script setup lang="ts">
import HomeCarousel from '@/components/HomeCarousel.vue';
import HomeSection from '@/components/HomeSection.vue';
</script>

<template>
  <div class="flex max-lg:flex-col pt-4 relative">
    <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-cover bg-no-repeat
        max-lg:min-h-screen max-lg:h-auto max-lg:w-screen max-lg:bg-position-[center_top]"></div>
    <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
      <HomeSection title="Les korrigans s'agitent <br/> dans les bois" button="Découvrir les activités" page="activites" picture="prepa-champ">
        On commence à entendre courir le bruit d'un rassemblement de korrigans le deuxième week-end d'août dans la
        clairière de Plourinator.
        Que peuvent bien manigancer ces petits punks ?
      </HomeSection>
      <HomeSection title="Tu es inquiet de leurs bêtises ?" button="Infos pratiques" page="infos" picture="eenn-serge" revert>
        Rassure toi, ils prévoient toujours tout pour accueillir les curieux dans les meilleures conditions !
      </HomeSection>
      <HomeSection class="mb-10" title="Le rituel annuel aura sa <br/> nouvelle édition" button="Participation" page="participation" picture="beer-bong">
        Tu peux d'ores et déjà annoncer ta venue en participant à l'événement.
      </HomeSection>
      <div class="photos relative mt-10">
        <div class="text-primary font-bold text-4xl max-lg:text-2xl uppercase text-center my-4">Retour en images</div>
        <div class="container mx-auto mb-8 relative">
          <HomeCarousel></HomeCarousel>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
svg text {
  text-anchor: middle;
}
</style>