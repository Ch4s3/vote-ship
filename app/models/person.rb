class Person < ActiveRecord::Base
  belongs_to :project

  def has_voted?
    voted == true
  end
end
