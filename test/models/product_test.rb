require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
    @image = images(:one)
  end

  test "ct_002" do
    product = Product.new(name: 'teste', description: 'teste', link: 'teste', category_id: @category.id)
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
