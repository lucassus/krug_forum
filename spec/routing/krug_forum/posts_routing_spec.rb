require "spec_helper"

describe KrugForum::PostsController do
  describe "routing" do

    it "routes to #index" do
      path = krug_forum.posts_path
      path.should == '/krug_forum/posts'
      get(path).should route_to("krug_forum/posts#index")
    end

    it "routes to #new" do
      get("/krug_forum/posts/new").should route_to("krug_forum/posts#new")
    end

    it "routes to #show" do
      get("/krug_forum/posts/1").should route_to("krug_forum/posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/krug_forum/posts/1/edit").should route_to("krug_forum/posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/krug_forum/posts").should route_to("krug_forum/posts#create")
    end

    it "routes to #update" do
      put("/krug_forum/posts/1").should route_to("krug_forum/posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/krug_forum/posts/1").should route_to("krug_forum/posts#destroy", :id => "1")
    end

  end
end
