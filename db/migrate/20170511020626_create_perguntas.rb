class CreatePerguntas < ActiveRecord::Migration[5.0]
  def change
    create_table :perguntas do |t|
      t.string :pergunta

      t.timestamps
    end
  end
end
