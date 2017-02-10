class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :qtdPaginas
      t.text :sinopse

      t.timestamps null: false
    end
  end
end
