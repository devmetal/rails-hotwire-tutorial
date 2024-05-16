module Api
  class UserResource < JSONAPI::Resource
    attributes :id, :email, :created_at
  end
end
