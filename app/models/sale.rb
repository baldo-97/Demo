class Sale < ApplicationRecord
  validates :product_name, :price, :quantity, :sale_date, presence: true
  
  belongs_to :user
end
