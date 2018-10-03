class DetailOrderOfWork < ApplicationRecord
  belongs_to :header_order_of_work
  belongs_to :products
end
