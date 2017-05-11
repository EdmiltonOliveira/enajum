class CreateInscritos < ActiveRecord::Migration[5.0]
  def change
    create_table :inscritos do |t|
      t.string :nome
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :fone
      t.string :celular
      t.string :instituicao
      t.references :grupo, foreign_key: true
      t.timestamps
    end
  end
end
