class AddAdminToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :admin, foreign_key: true
  end
end
