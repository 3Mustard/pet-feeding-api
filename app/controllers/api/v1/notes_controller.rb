class Api::V1::NotesController < ApplicationController

  def index
    pet = Pet.find_by(id: params[:pet_id])

    render json: pet.notes
  end

  def show
    note = Note.find_by(id: params[:id])

    render json: note
  end

  def create
    pet = Pet.find_by(id: params[:pet_id])
    pet.notes.new(note_params)
    pet.save

    render json: pet.notes.last
  end

  def destroy
    note = Note.find_by(id: params[:id])
    noteID = note.id
    note.destroy

    render json: noteID
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end