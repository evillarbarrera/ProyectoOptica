class HeaderMovement < ApplicationRecord
  belongs_to :movement_types
  belongs_to :document_types
  belongs_to :header_order_of_works
  belongs_to :providers
end
