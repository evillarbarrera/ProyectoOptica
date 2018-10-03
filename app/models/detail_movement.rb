class DetailMovement < ApplicationRecord
  belongs_to :header_movements
  belongs_to :products
end
