require 'rails_helper'

RSpec.describe 'The wearer adds shoes to their wardrobe', feature: true do
  let!(:sunny) { create(:tag, name: 'sunny') }

  scenario 'add shoes to wardrobe' do
    visit new_item_path
    expect(page.body).to have_content('New Item')

    within('form') do
      fill_in 'item', with: 'shoes'
      check('sunny')
    end

    click_button 'Create Item'

    visit items_path

    expect(page.body).to have_content('shoes')
    expect(page.body).to have_content('sunny')
  end
end
