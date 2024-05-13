# frozen_string_literal: true

module Api
  class QuoteResource < JSONAPI::Resource
    attributes :name, :created_at
  end
end
