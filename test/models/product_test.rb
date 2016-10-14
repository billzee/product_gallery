require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "ct_002" do
    product = Product.new(name: 'teste', description: 'teste', link: 'teste', category_id: 1)
    product.save
    assert product.save, "Saved the product with mandatory fields"
  end

  test "ct_003" do
    product = Product.new()
    assert_not product.save, "Saved the product with blank fields"
  end

  # test "ct_003" do
  #   product = Product.new(images: )
  #   assert_not product.save, "Saved the product with mandatory fields"
  # end

end
