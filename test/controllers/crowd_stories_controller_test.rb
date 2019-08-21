require 'test_helper'

class CrowdStoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crowd_story = crowd_stories(:one)
  end

  test "should get index" do
    get crowd_stories_url, as: :json
    assert_response :success
  end

  test "should create crowd_story" do
    assert_difference('CrowdStory.count') do
      post crowd_stories_url, params: { crowd_story: { content: @crowd_story.content } }, as: :json
    end

    assert_response 201
  end

  test "should show crowd_story" do
    get crowd_story_url(@crowd_story), as: :json
    assert_response :success
  end

  test "should update crowd_story" do
    patch crowd_story_url(@crowd_story), params: { crowd_story: { content: @crowd_story.content } }, as: :json
    assert_response 200
  end

  test "should destroy crowd_story" do
    assert_difference('CrowdStory.count', -1) do
      delete crowd_story_url(@crowd_story), as: :json
    end

    assert_response 204
  end
end
