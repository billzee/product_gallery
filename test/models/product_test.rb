require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
    @image = images(:one)
  end

  def has_image(product)
    image = Image.new(link: 'teste', product_id: product.id)
    image.save
    if image.product_id == product.id
      return true
    else
      return false
    end
  end

  def has_not_image(product)
    image = Image.new(link: 'teste', product_id: products(:one))
    image.save
    if image.product_id == product.id
      return true
    else
      return false
    end
  end

  test "ct_002" do
    product = Product.new(name: 'teste', category_id: @category.id)
    assert product.save && has_image(product), "Saved the product with mandatory fields"
  end

  test "ct_003" do
    product = Product.new()
    assert product.save, "Didnt save the product with blank fields"
  end

  test "ct_004" do
    product = Product.new(name: 'teste', category_id: @category.id)
    assert product.save && has_not_image(product), "Didnt save the product without image"
  end

  test "ct_005" do
    product = Product.new(name: 'teste', description: 'teste', link: 'teste', category_id: @category.id)
    product.save
    assert product.save && has_image(product), "Saved the product with all fields"
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
