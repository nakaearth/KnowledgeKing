require 'spec_helper'

describe "knowledges/edit" do
  before(:each) do
    @knowledge = assign(:knowledge, stub_model(Knowledge,
      :title => "MyString",
      :description => "MyText",
      :user_id => 1
    ))
  end

  it "renders the edit knowledge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => knowledges_path(@knowledge), :method => "post" do
      assert_select "input#knowledge_title", :name => "knowledge[title]"
      assert_select "textarea#knowledge_description", :name => "knowledge[description]"
      assert_select "input#knowledge_user_id", :name => "knowledge[user_id]"
    end
  end
end
