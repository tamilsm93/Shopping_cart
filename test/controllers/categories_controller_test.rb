require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest


  test "should_get_create" do
      assert_difference 'Category.count' , 1 do 
        post categories_path, params: { category:  {
          name: "men_shirt",
          description: "select men shirt",
          image: "mens_shirt"
        }}
        assert_redirected_to categories_path
      end
  end


end
