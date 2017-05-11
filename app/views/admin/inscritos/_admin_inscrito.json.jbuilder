json.extract! admin_inscrito, :id, :nome, :endereco, :complemento, :bairro, :cidade, :estado, :cep, :fone, :celular, :created_at, :updated_at
json.url admin_inscrito_url(admin_inscrito, format: :json)
