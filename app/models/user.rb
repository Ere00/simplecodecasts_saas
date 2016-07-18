class User < ActiveRecord::Base
  
  # Käyttäjän pitää olla joko basic tai pro account
  belongs_to :plan
  has_one :profile 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
