<script setup>
// @ts-ignore
import HomePage from "./components/HomePage.vue";
</script>

<template>
    <router-link to="/">Home</router-link>
    <router-link to="/user_blogs">About Us</router-link>
    <router-view />
</template>

<style scoped></style>
