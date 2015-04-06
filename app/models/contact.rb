class Contact < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  has_many :phones

  validates :firstname, :lastname, presence: true
  validates :email, presence: true
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }, :unless => "email.blank?"
  validates :email, uniqueness: true
end
