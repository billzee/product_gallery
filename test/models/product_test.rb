require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
  end

  test "ct_002" do
    product = Product.new(name: 'teste', category_id: @category.id, images: ['teste'])
    assert product.save, "Saved the product with mandatory fields"
  end

  test "ct_003" do
    product = Product.new()
    assert_not product.save, "Didnt save the product with blank fields"
  end

  test "ct_004" do
    product = Product.new(name: 'teste', category_id: @category.id)
    assert_not product.save, "Didnt save the product without image"
  end

  test "ct_005" do
    product = Product.new(name: 'teste', description: 'teste', link: 'teste', category_id: @category.id, images: ['teste'])
    product.save
    assert product.save, "Saved the product with all fields"
  end

  test "ct_006" do
    product = products(:one)
    assert Product.update(product.id, name: 'aaaaaa', description: 'aaaaaa', link: 'aaaaaa', category_id: @category.id), "Product updated"
  end

  test "ct_007" do
    product = products(:one)
    assert product.destroy, "Product deleted"
  end
end
