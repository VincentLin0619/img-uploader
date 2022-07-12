class Product < ApplicationRecord
  has_many :product_imgs, class_name: "product_img", dependent: :destroy
  accepts_nested_attributes_for :product_imgs

  def product_imgs
    [Product_imgs.new, Product_imgs.new]
  end

  def product_imgs_attributes=(product_imgs_attributes)
    product_imgs_attributes.each do |i, product_imgs_attributes|
      raise params.inspect
      if product_imgs_attributes[:img].length > 0 && product_imgs_attributes.length > 0
        self.product_imgs.build(product_imgs_attributes)
      end
    end
  end
end
