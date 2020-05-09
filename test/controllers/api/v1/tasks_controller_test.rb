require 'test_helper'

class Api::V1::TasksControllerTest < ActionController::TestCase
  setup do
    @author = create(:user)
    @assignee = create(:user)
    @task = create(:task, author: @author)
    sign_in @author
  end

  test 'should get show' do
    task = @task
    get :show, params: { id: task.id, format: :json }
    assert_response :success
  end

  test 'should get index' do
    get :index, params: { format: :json }
    assert_response :success
  end

  test 'should post create' do
    assignee = @assignee
    task_attributes = attributes_for(:task).
      merge({ assignee_id: assignee.id })
    post :create, params: { task: task_attributes, format: :json }
    assert_response :created

    data = JSON.parse(response.body)
    created_task = Task.find(data['task']['id'])

    assert_equal task_attributes.stringify_keys, created_task.slice(*task_attributes.keys)
  end

  test 'should put update' do
    author = @author
    assignee = @assignee
    task = @task
    task_attributes = attributes_for(:task).
      merge({ author_id: author.id, assignee_id: assignee.id }).
      stringify_keys

    patch :update, params: { id: task.id, format: :json, task: task_attributes }
    assert_response :success

    task.reload
    assert_equal task.slice(*task_attributes.keys), task_attributes
  end

  test 'should delete destroy' do
    task = @task
    delete :destroy, params: { id: task.id, format: :json }
    assert_response :success

    refute Task.exists?(id: task.id)
  end
end
