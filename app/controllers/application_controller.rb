# frozen_string_literal: true

# app/controllers/application_controller.rb
class ApplicationController < ActionController::API
  include JsonapiErrorsHandler

  ErrorMapper.map_errors!(
    {
      'ActiveRecord::RecordNotFound' =>
      'JsonapiErrorsHandler::Errors::NotFound'
    }
  )
  rescue_from ::StandardError, with: ->(e) { handle_error(e) }
end
