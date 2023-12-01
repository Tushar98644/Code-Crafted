# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  get 'blog/:id' => 'blog_posts#show', as: :blog_post

  get 'user_blogs' => 'blog_posts#user_blogs', as: :my_blogs
  get 'new_blog' => 'blog_posts#new', as: :new_blog
  post 'create' => 'blog_posts#create', as: :create_blog

  # Defines the root path route ("/")
  root 'blog_posts#index'
end
