# frozen_string_literal: true

module Api
  class QuotesController < ApiController
    before_action :authenticate_api_user!
  end
end
