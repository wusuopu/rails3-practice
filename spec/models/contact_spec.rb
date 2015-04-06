require 'rails_helper'

RSpec.describe Contact, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a firstname, lastname and email" do
    contact = Contact.new(
      firstname: 'Long',
      lastname: 'Changjin',
      email: 'admin@longchangjin.cn'
    )
    expect(contact).to be_valid
  end

  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastname }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email) }

  it "is invalid with a invalid email" do
    contact = Contact.new(email: "abcd")
    contact.valid?
    #Rails.logger.info "DEBUG..."
    expect(contact.errors[:email].size).to eq(1)
  end
end
