require "rails_helper"

describe Person, :model do
  context "#has_voted?" do
    let(:sal) { Person.new(name: "Sal", voted: false) }
    let(:paris) { Person.new(name: "Paris", voted: true) }

    it "returns true if person has voted" do
      expect(paris.has_voted?).to eq(true)
    end

    it "returns false if person has not voted" do
      expect(sal.has_voted?).to eq(false)
    end
  end

  context "#vote_for" do
    let(:project1) { Project.create(name: "unicorn helmet") }
    let(:project2) { Project.create(name: "dancing robot") }
    let(:sal) { Person.create(name: "Sal", voted: false, project: project1) }

    it "should not let a person vote for their own project" do
      expect(sal.vote_for(project1)).to eq(:can_not_vote_for_own_project)
    end

    it "should set shet the person as having voted" do
      sal.vote_for(project2)
      expect(sal.has_voted?).to eq(true)
    end

    it "should update the project's votes" do
      sal.vote_for(project2)
      expect(project2.votes.count).to eq(1)
    end

    it "should not allow a person to vote twice" do
      vote = sal.vote_for(project2)
      expect(vote.class).to eq(Vote)
      vote2 = sal.vote_for(project2)
      expect(vote2).to eq(:has_voted)
    end
  end
end
