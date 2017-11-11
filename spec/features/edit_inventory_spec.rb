# require 'rails_helper'

# RSpec.describe 'The wearer edits the tags on a pair of shoes to their wardrobe', feature: true do
#   let!(:shoes) { create(:item, name: 'shoes') }

#   scenario 'edit shoes to have a tag of daytime' do
#     visit edit_item_path(shoes)
#     expect(page.body).to have_content('shoes')

#     within('form') do
#       fill_in 'tags', with: 'daytime'
#     end

#     click_button 'Update Item'

#     visit items_path

#     expect(page.body).to have_content('shoes was updated')
#   end
# end
