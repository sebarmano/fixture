require "rails_helper"

RSpec.describe "user views group", type: :system do
  it "can see the teams in the group" do
    group = create(:group, name: "Group A")
    create(:team, name: "Argentina", group: group)
    create(:team, name: "Brazil", group: group)

    visit group_path(group)

    within(".group") { expect(page).to have_content("Argentina", "Brazil") }
  end
end
