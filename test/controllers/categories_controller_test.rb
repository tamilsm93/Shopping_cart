require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should_get_create" do
      assert_difference 'Category.count' , 1 do 
        post categories_path, params: { category:  {
          name: "men_shirt",
          description: "select men shirt",
          image: "mens_shirt"
        }}
    assert_response :success
      end
  end

  test "should get show" do
    get categories_show_url
    assert_response :success
  end

  test "should get update" do
    get categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get categories_destroy_url
    assert_response :success
  end

end
