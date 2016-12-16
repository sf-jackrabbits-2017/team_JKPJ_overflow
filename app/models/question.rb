class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  has_many :answers
  belongs_to :user

  # TO-DO: Need association with favorite answer... has_one favorite ...foreign_key=>favorite_id or something
end
