<template>
  <div class="flex max-lg:flex-col pt-4 relative">
    <div class="min-w-full h-[calc(100%+80px)] absolute -z-10 -top-20 max-lg:-top-8 left-0 bg-[url(../img/green_bg_full.png)] bg-cover bg-no-repeat
        max-lg:min-h-screen max-lg:h-auto max-lg:w-screen max-lg:bg-position-[center_top]"></div>
    <div class="flex flex-col container mx-auto mb-24 max-lg:mb-14">
      <PageTitle title="Infos pratiqueS">Retrouve toutes les infos importantes ici</PageTitle>
      <HomeSection title="Tu seras nourri." picture="axel-frites-barnum"
                   customClass="max-h-87.5 w-full object-cover object-[50%_75%] rounded-2xl">
        Tu peux venir les mains dans les poches, tu auras de quoi manger ! Cette année, les fameuses frites seront une
        fois de plus présente et avec tu pourras déguster des hot-dogs ! Tu pourras aussi utiliser un barbecue si tu
        apportes autre
        chose à manger!
      </HomeSection>
      <HomeSection title="Ta soif sera étanchée ." picture="axel-biere"
                   customClass="max-h-87.5 w-full object-cover object-[50%_41%] rounded-2xl" revert>
        On ne ment pas en te disant "les mains dans les poches". De la délicieuse Coreff IPA et Blonde Bio seront à
        disposition
        grâce à des tireuses tout le we. Si tu souhaites boire autre chose on te demande juste d'éviter le verre autant
        que possible !
      </HomeSection>
      <HomeSection title="Tu pourras chiller" picture="coin-chill">
        La fête c'est cool ! Mais si tu veux te poser, ou que tu es un peu overwhelmed, tu trouveras un coin chill pour
        te
        détendre.
      </HomeSection>
      <HomeSection title="Les korrigans veilleront sur ton sommeil" picture="tentes"
                   customClass="max-h-87.5 w-full object-cover object-[50%_60%] rounded-2xl" revert>
        Pose ta tente ou ton camion pour dormir, tu n'as pas besoin de t'inquieter de prendre le volant. <br/>(NE PREND
        PAS LE VOLANT SI T'AS BU!)
      </HomeSection>
    </div>
  </div>
</template>

<script setup>
import HomeSection from '@/components/HomeSection.vue';
import PageTitle from '@/components/ui/PageTitle.vue';

</script>