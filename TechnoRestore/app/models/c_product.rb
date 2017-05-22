class CProduct < ApplicationRecord
  belongs_to :ptype
  belongs_to :cstatus
  belongs_to :user
end
