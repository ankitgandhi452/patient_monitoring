require 'test_helper'

class CompletedTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @completed_task = completed_tasks(:one)
  end

  test "should get index" do
    get completed_tasks_url, as: :json
    assert_response :success
  end

  test "should create completed_task" do
    assert_difference('CompletedTask.count') do
      post completed_tasks_url, params: { completed_task: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show completed_task" do
    get completed_task_url(@completed_task), as: :json
    assert_response :success
  end

  test "should update completed_task" do
    patch completed_task_url(@completed_task), params: { completed_task: {  } }, as: :json
    assert_response 200
  end

  test "should destroy completed_task" do
    assert_difference('CompletedTask.count', -1) do
      delete completed_task_url(@completed_task), as: :json
    end

    assert_response 204
  end
end
