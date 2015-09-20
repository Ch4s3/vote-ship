class Person < ActiveRecord::Base
  belongs_to :project
  has_one :vote
  before_create :generate_url_safe_uuid

  def vote_for(project)
    return :has_voted if has_voted? == true
    if project == self.project
      return :can_not_vote_for_own_project
    else
      vote = Vote.new(person: self, project: project)
      if vote.save
        self.voted = true
        self.save
        vote
      else
        :fail
      end
    end
  end

  def has_voted?
    voted || false
  end

  def generate_url_safe_uuid
    return nil if uuid.present?
    unless uuid.present?
      self.uuid = SecureRandom.urlsafe_base64(32)
    end
  end
end
