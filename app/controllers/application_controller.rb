class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  include Knock::Authenticable

  private
  def unauthorized_entity(entity_name)
    json_response({error: 'Unautorized Request'}, :unathorized)
  end
end
