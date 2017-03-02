class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end




# private
#
#   def note_params
#     params.require(:note).permit(:title, :body, :created_at, :updated_at, :tags, :user)
#   end

end
