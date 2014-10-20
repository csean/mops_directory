class AddMentorAndLeadershipFlags < ActiveRecord::Migration
  def change
    add_column :members, :mentor, :boolean, default: false
    add_column :members, :leadership, :boolean, default: false
  end
end
