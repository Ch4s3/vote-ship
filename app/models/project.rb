class Project < ActiveRecord::Base
  belongs_to :contest
  has_many :votes
end
