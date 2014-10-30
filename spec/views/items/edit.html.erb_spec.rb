require 'rails_helper'

RSpec.describe "items/edit", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :list_id => 1,
      :content => "MyString",
      :complete => false
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_list_id[name=?]", "item[list_id]"

      assert_select "input#item_content[name=?]", "item[content]"

      assert_select "input#item_complete[name=?]", "item[complete]"
    end
  end
end
