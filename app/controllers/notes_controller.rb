class NotesController < ApplicationController

  def index
    if current_user
      @notes = current_user.notes
    else
      @notes = Note.all
    end
    render json: @notes
  end

  def create
    @note = Note.new(note_params)
    if @note.save

      render json: @note
    else
      render json:{errors: @note.errors.full_messages.collect{ |e| {error: e }}}, status: 400
    end
  end





private

  def note_params
    np = params.permit(:body, :title, :tags)
    tags = []
    np[:tags].split(",").map(&:strip).each do |t|
      tags << Tag.find_or_create_by!(name: t)
    end
    np[:tags] = tags
    return np
  end



end
