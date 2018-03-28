require "rails_helper"

RSpec.describe "user views group", type: :system do
  it "can see the teams in the group" do
    team_1 = create(:team, name: "Argentina")
    team_2 = create(:team, name: "Brazil")
    group = create(:group, teams[team_1, team_2])

    visit group_path(group)

    within(".group") { expect(page).to have_content("Argentina", "Brazil") }
  end
end
