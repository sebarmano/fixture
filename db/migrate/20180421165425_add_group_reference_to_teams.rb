class AddGroupReferenceToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :group, foreign_key: true
  end
end
