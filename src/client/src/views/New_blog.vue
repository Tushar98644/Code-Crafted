<template>
  <aside aria-label="new-blog" class="bg-slate-800 md:px-0 px-4">
    <form @submit.prevent="createBlog" class="max-w-md mx-auto md:py-28 py-28">
      <div class="mb-5">
        <label
          for="title"
          class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
          >Title</label
        >
        <input
          type="text"
          class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
          placeholder="title"
          required
        />
      </div>
      <div class="mb-5">
        <label
          for="description"
          class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
          >Description</label
        >
        <input
          type="text"
          class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
          placeholder="description"
          required
        />
      </div>
      <div class="mb-5">
        <label
          for="content"
          class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
          >Content</label
        >
        <textarea
          class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 pb-20 h-[10rem] dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
          required
        ></textarea>
      </div>
      <div class="mb-5">
        <label
          for="image"
          class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
          >Avatar</label
        >
        <input
          v-on:change="onImageChange"
          type="file"
          accept="image/*"
          class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
          required
        />
      </div>
      <div class="mb-5">
        <label
          for="category"
          class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
          >Category</label
        >
        <select
          class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
          required
        >
          <option value="" disabled>Select a category</option>
          <option value="Article">Article</option>
          <option value="Tutorial">Tutorial</option>
        </select>
      </div>
      <div class="flex items-start mb-5">
        <div class="flex items-center h-5">
          <input
            type="checkbox"
            class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
            required
          />
        </div>
        <label
          for="terms"
          class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
          >I agree with the
          <a href="#" class="text-blue-600 hover:underline dark:text-blue-500"
            >terms and conditions</a
          ></label
        >
      </div>
      <button
        @click="createBlog"
        class="text-white bg-blue-700 hover:bg-blue-800 p-2.5 rounded-lg text-sm shadow-lg"
        type="submit"
      >
        Create new Blog
      </button>
    </form>
  </aside>
</template>
