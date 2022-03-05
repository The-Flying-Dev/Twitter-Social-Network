class User < ApplicationRecord
  validates :username, presence: true
  has_many :posts #association
  acts_as_voter #this model performs the action of interacting with the post model
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
