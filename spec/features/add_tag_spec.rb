require 'rails_helper'

RSpec.describe 'The wearer creates a new tag', feature: true do
  scenario 'add day wear to tags' do
    visit new_tag_path
    expect(page.body).to have_content('New Tag')

    within('form') do
      fill_in 'tag', with: 'day wear'
    end

    click_button 'Create Tag'

    visit tags_path

    expect(page.body).to have_content('day wear')
  end
end
