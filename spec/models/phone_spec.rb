require 'rails_helper'

RSpec.describe Phone, :type => :model do
  it { should validate_uniqueness_of(:phone).scoped_to(:contact_id) }
end
