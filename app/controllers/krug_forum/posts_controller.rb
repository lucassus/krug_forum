module KrugForum
  class PostsController < ApplicationController
    inherit_resources

    def create
      @post = Post.new(params[:post])
      @post.user = _current_user

      create! { krug_forum.posts_path }
    end
  end
end
