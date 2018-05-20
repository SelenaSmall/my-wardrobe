class CreateLooks < ActiveRecord::Migration[5.1]
  def change
    create_table :looks do |t|
      t.string :name
      t.timestamps
    end

    create_table :items_looks, id: false do |t|
      t.belongs_to :look, index: true
      t.belongs_to :item, index: true
    end
  end
end
