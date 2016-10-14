class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :link
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
