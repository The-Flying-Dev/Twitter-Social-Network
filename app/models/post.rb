class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable #this model gets voted on
end
