class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.string :nome
      t.string :estilo
      t.float :preco
      t.string :produtora

      t.timestamps null: false
    end
  end
end
