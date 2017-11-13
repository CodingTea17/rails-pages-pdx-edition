require 'rails_helper'

describe "the add a type process" do
  it "adds a new type" do
    visit types_path
    click_link "New Category"
    fill_in "Category", :with => "Schools"
    click_on 'Create Type'
    expect(page).to have_content 'Categories'
  end

  it "gives an error when no name is entered" do
    visit new_type_path
    click_on 'Create Type'
    expect(page).to have_content 'errors'
  end
end
