class Product < ApplicationRecord
  belongs_to :ptype
  belongs_to :pcategory
  belongs_to :status
end
