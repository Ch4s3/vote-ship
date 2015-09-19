require "rails_helper"

describe Contest, :model do
  context "#winner" do
    let(:contest) { Contest.create(name: "A Contest") }
    let(:project_1) { Project.create(name:"p1", vote_count: 3, contest: contest) }
    let(:project_2) { Project.create(name:"p2", vote_count: 0, contest: contest) }
    let(:project_3) { Project.create(name:"p3", vote_count: 2, contest: contest) }

    it "returns winner" do
      projects = [project_1, project_2, project_3]
      expect(contest.winner).to eq(projects.first)
    end
  end
end
