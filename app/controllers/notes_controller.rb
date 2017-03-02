class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  # def create
  #   @note = Note.new(note_params)



# private
#
#   def note_params
#     params.require(:note).permit(:title, :body, :tags)
#   end

end
