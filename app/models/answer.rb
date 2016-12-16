class Answer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :question
end
