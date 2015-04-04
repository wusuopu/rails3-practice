class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name
  has_many :microposts

  # 操作回调函数
  after_save :update_action
  after_destroy :destroy_action

  def update_action
    puts "#{self.id} has updated.."
  end
  def destroy_action
    puts "#{self.id} has destroyed.."
  end
end
