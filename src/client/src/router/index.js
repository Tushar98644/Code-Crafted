import { createRouter, createWebHistory } from 'vue-router';
import HomePage from '../views/Home.vue';
import Blogs from '../views/User_blogs.vue';
import NewBlog from '../views/New_blog.vue'
import Signup from '../components/Signup.vue'
import Signin from '../components/Signin.vue'
import Profile from '../components/Profile.vue'

const routes = [
  { path: '/', component: HomePage },
  { path: '/user_blogs', component: Blogs },
  { path: '/new_blog' , component: NewBlog },
  { path: '/user/signup' , component: Signup },
  { path: '/user/signin' , component: Signin },
  { path: '/user/profile' , component: Profile }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;