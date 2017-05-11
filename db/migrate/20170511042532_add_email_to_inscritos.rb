class AddEmailToInscritos < ActiveRecord::Migration[5.0]
  def change
    add_column :inscritos, :email, :string
  end
end
