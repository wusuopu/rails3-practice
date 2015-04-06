class Phone < ActiveRecord::Base
  attr_accessible :contact_id, :phone, :phone_type
  belongs_to :contact

  validates :phone, uniqueness: { scope: :contact_id }
end
