require 'rails_helper'

feature 'Project manager creates TODO' do
  scenario 'Successfully' do
    visit new_todo_path
    fill_in 'Description', with: 'Meet up with the team'
    click_button 'Save'
    expect( page ).to have_content('Meet up with the team')
  end  

  # feature 'Project manager creates TODO' do
  #   scenario 'With Description missing'
  #   vist new_todo_path
  #   fill_in 'Description', with: ''
  #   click_button 'Save'
  #   expect( page ).to have_content('')
  # end
end