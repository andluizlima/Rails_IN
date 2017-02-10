class AddConsoleIdJogoIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :console_id, :integer
    add_column :users, :jogo_id, :integer
  end
end
