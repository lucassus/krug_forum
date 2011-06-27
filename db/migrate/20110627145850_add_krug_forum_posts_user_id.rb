class AddKrugForumPostsUserId < ActiveRecord::Migration
  def up
    add_column :krug_forum_posts, :user_id, :integer
  end

  def down
    remove_column :krug_forum_posts, :user_id
  end
end
