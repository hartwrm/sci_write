class PromptsController < ApplicationController
  before_action :set_prompt, only: [:show, :update, :destroy]

  # GET /prompts
  def index
    @prompts = Prompt.all

    render json: @prompts
  end

  # GET /prompts/1
  def show
    render json: @prompt
  end

  # POST /prompts
  def create
    @prompt = Prompt.new(prompt_params)

    if @prompt.save
      render json: @prompt, status: :created, location: @prompt
    else
      render json: @prompt.errors, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prompt
      @prompt = Prompt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prompt_params
      params.require(:prompt).permit(:writing_prompt)
    end
end
