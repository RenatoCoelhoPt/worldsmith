Rails.application.config.middleware.insert_before 0, Rack::Cors do
    # TODO: Replace * in origin with 'localhost:3001'
    allow do
        origins '*' 
        resource '*', headers: :any, methods: %i[get post patch put delete]
    end
end  