<template>
    <img @click="menuItemClick('home')" src="../img/logo_text.png" class="absolute left-4 top-4 w-32 max-lg:w-16 cursor-pointer z-60"/>
    <div class="fixed w-full z-50">
        <div class="container m-auto flex justify-end">
            <div
            class="
                h-16 flex items-center relative font-bold text-lg transition-all duration-500 max-lg:hidden

                before:bg-linear-to-r before:to-white/75 before:from-transparent before:content-[''] before:h-full
                before:w-16 before:absolute before:-translate-x-full before:transition-opacity before:duration-500

                after:content-[''] after:h-full after:w-full after:absolute after:translate-x-full after:bg-white/75
                after:transition-opacity after:duration-500
            "

            :class="scrolled
                ? 'bg-white/75 before:opacity-100 after:opacity-100'
                : 'bg-transparent before:opacity-0 after:opacity-0'
            "
            >
                <div @click="menuItemClick('home')" class="flex mx-4 h-8 items-center cursor-pointer" :class="{'border-b-2 border-green-800' : isHome}">Accueil</div>
                <div @click="menuItemClick('activites')" class="flex mx-4 h-8 items-center cursor-pointer" :class="{'border-b-2 border-green-800' : isActivites}">Activités</div>
                <div @click="menuItemClick('participation')" class="flex mx-4 h-8 items-center cursor-pointer" :class="{'border-b-2 border-green-800' : isParticipation}">Participation</div>
                <div @click="menuItemClick('infos')" class="flex mx-4 h-8 items-center cursor-pointer" :class="{'border-b-2 border-green-800' : isInfos}">Infos pratiques</div>
                <a class="ml-2 p-2" href="https://www.instagram.com/plourinator/" target="_blank"><img class="h-6" src="../img/icons/instagram.png" /></a>
                <a class="p-2" href="https://www.facebook.com/profile.php?id=61572699055877" target="_blank"><img class="h-6" src="../img/icons/facebook.png" /></a>
            </div>
            <div class="lg:hidden p-2 bg-white/75">
                <div @click="toggleMenu" class="p-2">
                  <Menu :size="32"></Menu>  
                </div>
            </div>
            <div :class="['menu fixed top-0 left-0 w-full h-full bg-[#FFF]/10 z-10 flex flex-col items-center justify-center gap-10 text-3xl font-bold backdrop-blur-md title -translate-x-full transition duration-300 ease', { 'active translate-x-0': isOpen }]">
                <div class="absolute top-0 right-0 p-2">
                    <div @click="toggleMenu" class="p-2">
                        <X :size="32"></X>
                    </div>
                </div>
                <div @click="menuItemClick('home')" :class="{'text-primary': isHome}">Accueil</div>
                <div @click="menuItemClick('activites')" :class="{'text-primary': isActivites}">Activités</div>
                <div @click="menuItemClick('participation')" :class="{'text-primary': isParticipation}">Participation</div>
                <div @click="menuItemClick('infos')" :class="{'text-primary': isInfos}">Infos pratiques</div>
            </div>
        </div>
    </div>
    <div class="hero w-full flex items-center justify-center pt-24 max-lg:pt-26 relative">
        <div class="min-w-full min-h-full bg-[url(../img/hero2.png)] bg-cover bg-no-repeat absolute -z-10 top-0 left-0 opacity-80 bg-bottom"></div>
        <div class="h-full">
            <div class="flex flex-col items-center font-bold font-title text-shadow-lg">
                <h1 class="text-7xl max-lg:text-4xl text-primary">PlourinatoR</h1>
                <span class="text-4xl max-lg:text-xl text-secondary">Dark fairy editioN</span>
            </div>
            <div class="leading-5 text-center text-primary text-xl max-lg:text-lg my-4">
                <span class="font-bold">Entrez dans la forêt interdite..</span>
                <div class="font-medium">la fête commence à la tombée de la nuit</div>
            </div>
            <div class="text-primary font-title font-bold relative flex flex-col items-center justify-center h-32.5 max-lg:h-24 text-3xl max-lg:text-xl mb-2">
                <img src="../img/branch.png" class="absolute left-1/2 -top-1 h-32.5 max-lg:h-24 -translate-x-1/2"/>
                <span>7-8 août</span>
                <span>2026</span>
            </div>
            <div class="flex justify-center items-center mb-20 max-lg:mb-16">
                <Button color="tertiary" @click="menuItemClick('participation')"><Ticket class="mr-2"></Ticket> Participer</Button>
            </div>
        </div>
        <div class="absolute top-0 mx-auto container">
            <img src="../img/logo_self.png" class="absolute right-12 top-42 w-72 max-lg:hidden"/>
        </div>
    </div>
</template>

<script setup>
import Button from '@/components/ui/Button.vue';
import { X } from 'lucide-vue-next';
import { Ticket } from 'lucide-vue-next';
import { Menu } from 'lucide-vue-next';
import { ref, computed, onMounted, onUnmounted } from 'vue';
import { useRouter } from 'vue-router'

const isOpen = ref(false);

const router = useRouter()

const isHome = computed(() => { return router.currentRoute.value.name === 'home' })
const isActivites = computed(() => { return router.currentRoute.value.name === 'activites' })
const isParticipation = computed(() => { return router.currentRoute.value.name === 'participation' })
const isInfos = computed(() => { return router.currentRoute.value.name === 'infos' })
const scrolled = ref(false)

const handleScroll = () => {
  scrolled.value = window.scrollY > 50
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})

const toggleMenu = () => {
  isOpen.value = !isOpen.value;
  document.body.style.overflow = isOpen.value ? 'hidden' : 'auto';
};

const menuItemClick = (page) => {
  router.push({name: page});
  if (isOpen.value) toggleMenu();
}

</script>