class Order < ApplicationRecord
    has_many :order_lists
    belongs_to :user
end
