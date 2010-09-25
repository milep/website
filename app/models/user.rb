class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable, :trackable
  if Rails.env == 'production' #don't allow signing up at this point
    devise :database_authenticatable
  else
    devise :database_authenticatable, 
    :registerable,
    :recoverable, 
    :rememberable, 
    :validatable
  end

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
