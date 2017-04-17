class Api::BaseController < ApplicationController
	protect_from_forgery with: :null_session

	def api_error(opts)
    render json: { status: false, msg: opts }
  end

  def api_success(opts)
    render json: { status: true, msg: opts }
  end
end
