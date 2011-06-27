require 'spec_helper'

describe "krug_forum/posts/index.html.erb" do
  before(:each) do
    assign(:posts, [
      stub_model(KrugForum::Post,
        :subject => "Subject",
        :body => ""
      ),
      stub_model(KrugForum::Post,
        :subject => "Subject",
        :body => ""
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
