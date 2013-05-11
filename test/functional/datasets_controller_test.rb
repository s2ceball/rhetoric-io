require 'test_helper'

class DatasetsControllerTest < ActionController::TestCase
  setup do
    @dataset = datasets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datasets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dataset" do
    assert_difference('Dataset.count') do
      post :create, dataset: { audience: @dataset.audience, collection_rate: @dataset.collection_rate, complete: @dataset.complete, date_range: @dataset.date_range, description: @dataset.description, email: @dataset.email, format: @dataset.format, interest: @dataset.interest, join_email_list: @dataset.join_email_list, location: @dataset.location, need_digitization: @dataset.need_digitization, need_storage: @dataset.need_storage, purpose: @dataset.purpose, researchers: @dataset.researchers, title: @dataset.title, url: @dataset.url }
    end

    assert_redirected_to dataset_path(assigns(:dataset))
  end

  test "should show dataset" do
    get :show, id: @dataset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dataset
    assert_response :success
  end

  test "should update dataset" do
    put :update, id: @dataset, dataset: { audience: @dataset.audience, collection_rate: @dataset.collection_rate, complete: @dataset.complete, date_range: @dataset.date_range, description: @dataset.description, email: @dataset.email, format: @dataset.format, interest: @dataset.interest, join_email_list: @dataset.join_email_list, location: @dataset.location, need_digitization: @dataset.need_digitization, need_storage: @dataset.need_storage, purpose: @dataset.purpose, researchers: @dataset.researchers, title: @dataset.title, url: @dataset.url }
    assert_redirected_to dataset_path(assigns(:dataset))
  end

  test "should destroy dataset" do
    assert_difference('Dataset.count', -1) do
      delete :destroy, id: @dataset
    end

    assert_redirected_to datasets_path
  end
end
