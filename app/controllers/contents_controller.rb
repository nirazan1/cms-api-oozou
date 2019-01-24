class ContentsController < ApplicationController

  # GET /contents
  def index
    @contents = Content.all

    render json: @contents.published
  end

end
