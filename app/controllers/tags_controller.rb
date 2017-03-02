class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags
  end

  def name
    @tags = Tag.find_by(name: params[:name])
    render json: @tags
  end

end
