class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products. throgh: :cart_items, sources: :product

  def add_product_to_cart(product)
    ci = cart_itmes.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end 

end
