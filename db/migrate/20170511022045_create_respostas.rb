class CreateRespostas < ActiveRecord::Migration[5.0]
  def change
    create_table :respostas do |t|
      t.references :pergunta, foreign_key: true
      t.references :grupo, foreign_key: true
      t.text :resposta

      t.timestamps
    end
  end
end
