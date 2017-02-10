class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :nome
      t.string :midia
      t.float :preco
      t.string :fabricante
      t.date :lancamento

      t.timestamps null: false
    end
  end
end
