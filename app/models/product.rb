class Product < ApplicationRecord
  has_many :imgs, dependent: :destroy
end
