Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '*' # TODO: Replace with 'localhost:3001'
        resources '*', headers: :any, methods: %i[get post patch put delete]
    end
end