<template>
    <img @click="menuItemClick('home')" src="../img/logo_text.png" class="absolute left-4 top-4 w-32 max-lg:w-16 cursor-pointer"/>
    <div class="fixed w-full z-50">
        <div class="container m-auto flex justify-end">
            <div class="bg-white/75 h-16 flex items-center before:bg-linear-to-r relative font-bold text-lg
            before:from-transparent before:to-white/75 before:content-[''] before:h-full
            before:w-16 before:absolute before:-translate-x-full
            after:content-[''] after:h-full after:bg-white/75 after:w-full after:absolute after:translate-x-full max-lg:hidden">
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
                <div @click="menuItemClick('home')">Accueil</div>
                <div @click="menuItemClick('activites')">Activités</div>
                <div @click="menuItemClick('participation')">Participation</div>
                <div @click="menuItemClick('infos')">Infos pratiques</div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { X } from 'lucide-vue-next';
import { Menu } from 'lucide-vue-next';
import { ref, computed } from 'vue';
import { useRouter } from 'vue-router'

const isOpen = ref(false);

const router = useRouter()

const isHome = computed(() => { return router.currentRoute.value.name === 'home' })
const isActivites = computed(() => { return router.currentRoute.value.name === 'activites' })
const isParticipation = computed(() => { return router.currentRoute.value.name === 'participation' })
const isInfos = computed(() => { return router.currentRoute.value.name === 'infos' })

const toggleMenu = () => {
  isOpen.value = !isOpen.value;
  document.body.style.overflow = isOpen.value ? 'hidden' : 'auto';
};

const menuItemClick = (page) => {
  router.push({name: page});
  if (isOpen.value) toggleMenu();
}

</script>