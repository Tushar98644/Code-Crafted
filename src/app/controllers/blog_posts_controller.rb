class BlogPostsController < ApplicationController
  
   before_action :authenticate_user!
  #  authenticate_user! is a Devise helper method that ensures that the user is logged in before they can access the controller actions.

    def index
        @all_blog_posts = BlogPost.all
    end

    def show 
        @blog_post = BlogPost.find(params[:id])
    end

    def new
    end

    def create
      @blog_post = BlogPost.new(blog_post_params)
  
      if @blog_post.save
        # Successfully created a blog post
        redirect_to root_path, notice: 'Blog post was successfully created.'
      else
        # Failed to create a blog post, render the form again with errors
        render :new
      end
    end

    def blog_post_params
     params.permit(:title, :description, :body)
    end

    def user_blogs
      @user_blog_posts = current_user.email
    end
end