require_relative '../../lib/responses'

class ResponseController < ApplicationController

  def index

  end

  def show
    @code = responses(params[:id])
    if @code
      render :status => params[:id]
    else
      render :status => 404
      @code = 'Code Not Found'
    end
  end
end
