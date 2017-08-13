class ReplacementsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_replacement, only: [:show, :edit, :update, :destroy]

  # POST /replacements
  # POST /replacements.json
  def create
    @replacements = replacements_params.map do |replacement_params|
      Replacement.create(replacement_params)
    end

    respond_to do |format|
      if @replacements.all?(&:persisted?)
        format.json { render json: { success: true }, status: :created }
      else
        format.json do
          render json: { errors: @replacements.map(&:errors) }, status: :unprocessable_entity
        end
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def replacements_params
      params.
        permit(replacements: [:url, :replacement, :original]).
        fetch(:replacements, {})
    end
end
