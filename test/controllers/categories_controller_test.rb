require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  def setup
    @category = Category.create(name: "test_category")
  end
  
  test "should get category index" do
    get :index
    assert_response :success
  end
  
  test "should get category new" do
    get :new
    assert_response :success
  end
  
  test "should get category show" do
    get(:show, {'id' => @category.id})
    assert_response :success
  end
  
  
end
