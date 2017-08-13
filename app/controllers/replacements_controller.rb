class ReplacementsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_replacement, only: [:show, :edit, :update, :destroy]

  # POST /replacements
  # POST /replacements.json
  def create
    @replacement = Replacement.new(replacement_params)

    respond_to do |format|
      if @replacement.save
        format.json { render :show, status: :created }
      else
        format.json { render json: @replacement.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def replacement_params
      params.permit(:url, :replacement, :original)
    end
end
