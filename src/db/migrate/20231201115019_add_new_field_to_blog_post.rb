class AddNewFieldToBlogPost < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_posts, :category, :string
  end
end
