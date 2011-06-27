require 'spec_helper'

describe "krug_forum/posts/show.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(KrugForum::Post,
      :subject => "Subject",
      :body => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
