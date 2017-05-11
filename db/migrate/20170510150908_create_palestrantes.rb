class CreatePalestrantes < ActiveRecord::Migration[5.0]
  def change
    create_table :palestrantes do |t|
      t.string :nome
      t.string :telefones
      t.string :email
      t.string :instituicao

      t.timestamps
    end
  end
end
