<template>
  <section class="bg-gray-50 dark:bg-gray-900 py-20">
    <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
      <form @submit.prevent="submitForm" class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
        <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
          <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
            Create an account
          </h1>
          <!-- Display error messages -->
          <div class="text-gray-300 text-md font-medium animate-bounce">
            <!-- Include error messages component here -->
            <!-- Example: <ErrorMessages :resource="resource" /> -->
          </div>
          <!-- Form fields -->
          <div>
            <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Name</label>
            <input v-model="formData.name" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required placeholder="name@company.com">
          </div>
          <div>
            <label for="designation" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Designation</label>
            <input v-model="formData.designation" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required placeholder="designation@company.com">
          </div>
          <div>
            <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input v-model="formData.password" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required placeholder="••••••••">
          </div>
          <div>
            <label for="password_confirmation" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm Password</label>
            <input v-model="formData.password_confirmation" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required placeholder="••••••••">
          </div>
          <div>
            <label for="avatar" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Avatar</label>
            <input v-on:change="formData.avatar" type="file" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required placeholder="">
          </div>

          <!-- Terms and conditions checkbox -->
          <div class="flex items-start">
            <div class="flex items-center h-5">
              <input v-model="formData.acceptTerms" type="checkbox" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800" required>
            </div>
            <div class="ml-3 text-sm">
              <label for="terms" class="font-light text-gray-500 dark:text-gray-300">
                I accept the <a href="#" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Terms and Conditions</a>
              </label>
            </div>
          </div>

          <!-- Submit button -->
          <button type="submit" class="w-full bg-blue-600 text-white hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Create an account</button>
          
          <!-- Link to login page -->
          <p class="text-sm font-light text-gray-500 dark:text-gray-400">
            Already have an account? <a href="/user/signin" class="ml-28 font-medium text-primary-600 hover:underline dark:text-primary-500">Login here</a>
          </p>
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
        name: '',
        acceptTerms: false
      }
    };
  },
  methods: {
    submitForm() {
      // Handle form submission (e.g., send form data to API endpoint)
      console.log('Form data:', this.formData);
      // Make API request using Axios or fetch to submit the form data to your backend
    }
  }
};
</script>

<style scoped>
</style>