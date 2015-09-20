class PersonMailer < ApplicationMailer
  default from: "info@baltimorehackathon.com"

  def vote_email(person)
    @person = person
    @url  = "http://example.com/voting/#{@person.uuid}"
    mail(to: @person.email, subject: 'Vote On Participant Favorite')
  end
end
