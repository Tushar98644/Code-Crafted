class BlogPostsController < ApplicationController
    def index
      if user_signed_in?
      else
        redirect_to new_user_session_path
      end
      @blog_posts = BlogPost.all
    end

    def show 
      if user_signed_in?
      else
        redirect_to new_user_session_path
      end
      @blog_post = BlogPost.find(params[:id])
    end
end