require 'rails_helper'

RSpec.describe 'The wearer filters their inventory by tag', feature: true do
  let!(:summer) { create(:tag, name: 'summer') }
  let!(:winter) { create(:tag, name: 'winter') }

  # Create an item with tags through has_and_belongs_to_many relationship
  let!(:shoes) { create(:item, name: 'shoes') }

  scenario 'summer' do
    visit items_path
    expect(page.body).to have_content('Items')

    within('form') do
      fill_in 'search', with: 'summer'
    end

    click_button 'Search'

    visit items_path

    # expect(page.body).to have only the items with the tag ('summer')

    # expect(page.body).to have_content('shoes')
    # expect(page.body).to have_content('sunny')
    # expect(page.find(:css, 'img')[:alt]).to eq 'Test'
    # expect(page.find(:css, 'img')[:src]).to eq '/item/image/1/test.png'
  end
end
