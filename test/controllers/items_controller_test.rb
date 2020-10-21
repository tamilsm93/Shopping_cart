require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should_get_create" do
    assert_difference 'Item.count' , 1 do 
      post items_path, params: { item:  {
        name: "men_shirt",
        category_id: 1,
        description: "select men shirt",
        image: "mens_shirt",
        price: 120,
        brand: "nike",
        slug: "-"
      }}
  assert_response :success
    end
end
end
