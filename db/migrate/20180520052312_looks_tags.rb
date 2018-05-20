class LooksTags < ActiveRecord::Migration[5.1]
  def change
    create_table :looks_tags, id: false do |t|
      t.integer 'look_id'
      t.integer 'tag_id'
    end
  end
end
