require 'test_helper'

class CreateCategoriesControllerTest < ActionController::TestCase
  setup do
    @create_category = create_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_category" do
    assert_difference('CreateCategory.count') do
      post :create, create_category: { name: @create_category.name }
    end

    assert_redirected_to create_category_path(assigns(:create_category))
  end

  test "should show create_category" do
    get :show, id: @create_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_category
    assert_response :success
  end

  test "should update create_category" do
    put :update, id: @create_category, create_category: { name: @create_category.name }
    assert_redirected_to create_category_path(assigns(:create_category))
  end

  test "should destroy create_category" do
    assert_difference('CreateCategory.count', -1) do
      delete :destroy, id: @create_category
    end

    assert_redirected_to create_categories_path
  end
end
