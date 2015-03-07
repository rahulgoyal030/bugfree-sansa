class AddOwnerIdToForumThreads < ActiveRecord::Migration
  def change
    add_column :forum_threads, :owner_id, :integer
  end
end
