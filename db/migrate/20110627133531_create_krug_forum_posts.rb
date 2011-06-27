class CreateKrugForumPosts < ActiveRecord::Migration
  def self.up
    create_table :krug_forum_posts do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end

  def self.down
    remove_table :krug_forum_posts
  end
end
