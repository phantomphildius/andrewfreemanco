require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get tags_url
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post tags_url, params: { tag: { project_id: @tag.project_id, thought_id: @tag.thought_id } }
    end

    assert_response 201
  end

  test "should show tag" do
    get tag_url(@tag)
    assert_response :success
  end

  test "should update tag" do
    patch tag_url(@tag), params: { tag: { project_id: @tag.project_id, thought_id: @tag.thought_id } }
    assert_response 200
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete tag_url(@tag)
    end

    assert_response 204
  end
end
