<template>
  <aside aria-label="My Blogs" class="py-28 md:py-32 bg-gray-50 dark:bg-gray-800">
  <div class="md:px-4 px-6 mx-auto max-w-screen-xl">
    <h2 class="mb-8 text-2xl font-bold text-gray-900 dark:text-white text-center md:text-start">My Blogs</h2>
    <div class="grid gap-[100px] sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3">
        <div class="relative flex flex-col md:mt-12 mt-6 text-gray-700 bg-white shadow-md bg-clip-border rounded-xl">
          <div class="relative mx-4 -mt-6 overflow-hidden text-white shadow-lg bg-clip-border rounded-xl bg-blue-gray-500 shadow-blue-gray-500/40">
             <!-- <% if blog_post.image.attached? %>
              <%= link_to '#' do %>
                <%= image_tag blog_post.image, class: "rounded-t-lg h-56", alt: "Image 1" %>
              <% end %>
            <% end %> -->
          </div>
          <div class="p-6">
            <h5 class="block mb-2 font-sans text-xl antialiased font-semibold leading-snug tracking-normal text-blue-gray-900">
              <!-- <%= blog_post.title %> -->
            </h5>
            <p class="block font-sans text-base antialiased font-light leading-relaxed text-inherit">
              <!-- <%= blog_post.description %> -->
            </p>
          </div>
          <div class="p-6 pt-0">
            <button class="align-middle select-none font-sans font-bold text-center uppercase transition-all disabled:opacity-50 disabled:shadow-none disabled:pointer-events-none text-xs py-3 px-6 rounded-lg bg-gray-900 text-white shadow-md shadow-gray-900/10 hover:shadow-lg hover:shadow-gray-900/20 focus:opacity-[0.85] focus:shadow-none active:opacity-[0.85] active:shadow-none" type="button">
              Read More
            </button>
          </div>
        </div>
      <!-- <% end %> -->
    </div>
  </div>
</aside>
</template>