require 'rails_helper'

RSpec.describe 'The wearer adds shoes to their wardrobe', feature: true do
  scenario 'add shoes to wardrobe' do
    visit new_item_path
    expect(page.body).to have_content('New Item')

    within('form') do
      fill_in 'item', with: 'shoes'
    end

    click_button 'Create Item'

    visit items_path

    expect(page.body).to have_content('shoes')
  end
end
