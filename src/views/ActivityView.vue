<script setup>

import HomeSection from '@/components/HomeSection.vue';
import PageTitle from '@/components/ui/PageTitle.vue';
</script>
<template>
  <div class="flex max-lg:flex-col pt-4 relative">
    <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-cover bg-no-repeat
        max-lg:min-h-screen max-lg:h-auto max-lg:w-screen max-lg:bg-position-[center_top]"></div>
    <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
      <PageTitle title="ActivitéS">Pleins d'activités de quoi s'occuper tout le week end</PageTitle>
      <HomeSection title="Les classiques fléchettes" picture="flechette">
        Viens défier les meilleurs lanceurs de l'ouest, si tu penses être à leur hauteur.
      </HomeSection>
      <HomeSection title="Olympiade" picture="sport" revert>
        Un terrain de badminton / volley sera à disposition, et les korrigans préparent une olympiade, il faudra monter
        une équipe pour prouver ce que tu vaux !
      </HomeSection>
      <HomeSection title="Jeux de cartes / société" picture="cartes">
        Rien de mieux qu'un bon jeu de carte ou de société pour chill et s'amuser entre lutins. N'hésite pas à ramener les tiens!
      </HomeSection>
      <HomeSection title="Blind test" picture="blind-test" customClass="max-h-87.5 w-full object-cover object-[50%_70%] rounded-2xl" revert>
        L'incontournable blind test du samedi après midi, révise tes classiques et viens prouver que tu es le meilleur.
        Mais n'oublie pas que tu seras entouré de requins et qu'ils ont les crocs ! Seras tu assez bon pour remporter la couronne ?
      </HomeSection>
    </div>
  </div>
</template>