class MoveBodytoRichText < ActiveRecord::Migration[7.1]
  def change
    BlogPost.all.find_each do |post|
      post.update(content: post.body)
    end

    remove_column :blog_posts, :body
  end
end
