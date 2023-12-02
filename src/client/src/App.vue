<script setup>
// @ts-ignore
import HomePage from "./components/HomePage.vue";
import Layout from "./components/Layout.vue";
</script>

<template>
  <!-- <router-link to="/">Home</router-link>
    <router-link to="/user_blogs">About Us</router-link> -->
  <Layout>
    <router-view />
  </Layout>
</template>

<style scoped></style>
