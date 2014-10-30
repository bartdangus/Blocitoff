require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :list_id => 1,
      :content => "MyString",
      :complete => false
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_list_id[name=?]", "item[list_id]"

      assert_select "input#item_content[name=?]", "item[content]"

      assert_select "input#item_complete[name=?]", "item[complete]"
    end
  end
end
