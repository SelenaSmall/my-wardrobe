require 'rails_helper'

RSpec.describe 'The wearer adds shoes to their wardrobe', feature: true do
  let!(:sunny) { create(:tag, name: 'sunny') }

  scenario 'add shoes to wardrobe' do
    visit new_item_path
    expect(page.body).to have_content('New Item')

    within('form') do
      fill_in 'item', with: 'shoes'
      check('sunny')
      attach_file('item[image]', File.join(Rails.root, 'spec/fixtures/test.png'))
    end

    click_button 'Create Item'

    visit items_path

    expect(page.body).to have_content('shoes')
    expect(page.body).to have_content('sunny')
    expect(page.find(:css, 'img')[:alt]).to eq 'Test'
    expect(page.find(:css, 'img')[:src]).to eq '/item/image/1/test.png'
  end
end
