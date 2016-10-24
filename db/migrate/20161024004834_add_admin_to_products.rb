class AddAdminToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :admin, foreign_key: true
  end
end
