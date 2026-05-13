import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '@/views/HomeView.vue'
import ActivityView from '@/views/ActivityView.vue'
import InfosView from '@/views/infosView.vue'
import ParticipationView from '@/views/ParticipationView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/activites',
      name: 'activites',
      component: ActivityView,
    },
    {
      path: '/infos',
      name: 'infos',
      component: InfosView,
    },
    {
      path: '/participation',
      name: 'participation',
      component: ParticipationView,
    }
  ],
})

export default router
