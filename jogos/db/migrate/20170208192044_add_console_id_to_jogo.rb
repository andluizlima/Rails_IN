class AddConsoleIdToJogo < ActiveRecord::Migration
  def change
    add_column :jogos, :console_id, :integer
  end
end
