class CreateUserLivros < ActiveRecord::Migration
  def change
    create_table :user_livros do |t|
      t.integer :user_id
      t.integer :livro_id

      t.timestamps null: false
    end
  end
end
