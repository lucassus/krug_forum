require 'spec_helper'

describe "krug_forum/posts/new.html.erb" do
  before(:each) do
    assign(:post, stub_model(KrugForum::Post,
      :subject => "MyString",
      :body => ""
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  assert_select "form", :action => krug_forum.posts_path, :method => "post" do
      assert_select "input#post_subject", :name => "post[subject]"
      assert_select "textarea#post_body", :name => "post[body]"
    end
  end
end
