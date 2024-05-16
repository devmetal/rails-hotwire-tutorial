class ApiController < ActionController::API
  include ActionController::MimeResponds
  include JSONAPI::ActsAsResourceController
end
