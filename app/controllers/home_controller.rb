class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    auth = can? :manage, Role
    puts "can manage? #{auth}"
    puts "user_signed_in? #{user_signed_in?}"
    puts "current_user: #{current_user}"
    puts "user_session: #{user_session}"
  end
end
