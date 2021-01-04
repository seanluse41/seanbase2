json.extract! project, :id, :title, :body, :link, :image, :created_at, :updated_at
json.url project_url(project, format: :json)
