class AddLevelAndUsernameToGame < ActiveRecord::Migration
  def change
    add_column :games, :level, :string
    add_column :games, :username, :string
  end
end
