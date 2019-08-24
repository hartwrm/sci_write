class CrowdStoriesController < ApplicationController
  # before_action :set_crowd_story, only: [:show, :update, :des

  # GET /crowd_stories


  # GET /crowd_stories/1
  def show
    render json: @crowd_story
  end

  # POST /crowd_stories
  def create
  @prompt = Prompt.find(params[:prompt_id])
  @crowd_story = @prompt.crowd_stories.create(crowd_story_params)
  redirect_to prompt_path(@prompt)
  end

  # PATCH/PUT /crowd_stories/1
  def update
    if @crowd_story.update(crowd_story_params)
      render json: @crowd_story
    else
      render json: @crowd_story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crowd_stories/1
  def destroy
    @crowd_story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crowd_story
      @crowd_story = CrowdStory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crowd_story_params
      params.require(:crowd_story).permit(:story, :title)
    end
end
