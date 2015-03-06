class AddingUserId < ActiveRecord::Migration
  def change
  	add_column :forum_threads, :user_id, :integer
  	add_column :forum_posts, :user_id, :integer
  	add_column :forum_posts, :forum_thread_id, :integer
  end
end
