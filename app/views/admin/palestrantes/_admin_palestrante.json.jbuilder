json.extract! admin_palestrante, :id, :nome, :telefones, :email, :instituicao, :created_at, :updated_at
json.url admin_palestrante_url(admin_palestrante, format: :json)
