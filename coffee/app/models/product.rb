class Product < ApplicationRecord
    has_many :recipes
    has_many :order_lists
    belongs_to :user
end
