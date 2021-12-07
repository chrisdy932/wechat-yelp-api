class Api::V1::StoriesController < Api::V1::BaseController
  def index
    @stories = Story.all
    render json: @stories #Just for testing
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render json: @story, status: :created
    else
      render json: @story.errors, status: :unprocessable_entity
    end
  end
end
