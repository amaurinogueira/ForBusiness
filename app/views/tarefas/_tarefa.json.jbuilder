json.extract! tarefa, :id, :descTarefa, :diaVencimento, :created_at, :updated_at
json.url tarefa_url(tarefa, format: :json)
