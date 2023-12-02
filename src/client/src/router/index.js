import { createRouter, createWebHistory } from 'vue-router';
import HomePage from '../views/Home.vue';
import Blogs from '../views/User_blogs.vue';

const routes = [
  { path: '/', component: HomePage },
  { path: '/user_blogs', component: Blogs }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;