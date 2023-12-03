<template>
  <section class="bg-gray-50 dark:bg-slate-800 md:py-4 py-12">
    <div
      class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0"
    >
      <h1
        class="text-xl py-4 font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white"
      >
        Edit
        <!-- {{ resource_name.toString().humanize() }} -->
      </h1>
      <form
        @submit.prevent="submitForm"
        :method="httpMethod"
        class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700"
      >
        <div
          class="text-gray-300 text-md font-medium animate-pulse flex justify-center items-center mt-4"
        >
          <!-- Render error messages here -->
        </div>
        <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
          <!-- Name Field -->
          <div>
            <label
              for="name"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Name</label
            >
            <input
              v-model="formData.name"
              type="text"
              class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              autofocus
              autocomplete="name"
            />
          </div>
          <!-- Designation Field -->
          <div>
            <label
              for="designation"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Designation</label
            >
            <input
              v-model="formData.designation"
              type="text"
              class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              autofocus
              autocomplete="designation"
            />
          </div>
          <!-- Email Field -->
          <div>
            <label
              for="email"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Email</label
            >
            <input
              v-model="formData.email"
              type="email"
              class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              autofocus
              autocomplete="email"
            />
          </div>
          <!-- Avatar Field -->
          <div>
            <label
              for="avatar"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Avatar</label
            >
            <input
              v-on:change="formData.avatar"
              type="file"
              class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
              autofocus
              autocomplete="avatar"
            />
          </div>
          <!-- Password Field -->
          <!-- ... (same structure for password fields) ... -->
          <!-- Submit Button -->
          <div class="actions">
            <button
              type="submit"
              class="w-full bg-blue-600 text-white hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"
            >
              Update
            </button>
          </div>
          <!-- Cancel Account -->
          <div class="dark:text-white text-sm">
            <p>Unhappy? Cancel your account:</p>
            <div class="flex flex-row gap-10 pt-6">
              <a
                href="/"
                @click="goBack"
                class="text-sm font-light text-gray-500 dark:text-gray-400"
                >Back</a
              >
              <button
                @click="cancelAccount"
                class="bg-red-700 p-2.5 md:ml-40 ml-14 rounded-lg"
              >
                Cancel my account
              </button>
            </div>
          </div>
          <!-- Back Link -->
        </div>
      </form>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      formData: {
        name: "",
        acceptTerms: false,
      },
    };
  },
  methods: {
    submitForm() {
      // Handle form submission (e.g., send form data to API endpoint)
      console.log("Form data:", this.formData);
      // Make API request using Axios or fetch to submit the form data to your backend
    },
  },
};
</script>

<style scoped></style>
