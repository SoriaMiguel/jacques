class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags
  end

  def show
    @tags = Tag.find_by(name: params[:name])
    render json: @tags, include: ['notes.tags', 'notes.user']
  end

  def create
    @tags = Tag.new(tags_params)
  end


  private

  def tags_params
    params.permit(:name)
  end
end
