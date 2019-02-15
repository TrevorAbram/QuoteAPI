class QuotesController < ApplicationController

  def index
    @quotes = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end


  private
  def json_response(object)

    # Could also list 200 as status code. Changing to 401 for example will perform a successful, but unauthorized call.
    render json: object, status: :ok
  end
end
