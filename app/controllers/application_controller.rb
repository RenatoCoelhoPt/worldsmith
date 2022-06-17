class ApplicationController < ActionController::Base
    # TODO: Remove the line bellow and configure the Rails CSRF to accept requests from the frontend
    protect_from_forgery with: :null_session
end
