require "test_helper"

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  
  test "get new category form and create new category" do
    get new_category_path
    assert_template 'categories/new'
    assert_difference 'Category.count', 1 do
      post_via_redirect categories_path, category: {name: "test_category"}
    end
    
    assert_template 'categories/index'
    assert_match "test_category", response.body
    assert_select '#error_explanation', false,  "This page should contain no errors"
  end
  
  
  test "invalid category submission results in failure" do
    get new_category_path
    assert_template 'categories/new'
    assert_no_difference 'Category.count' do
      post categories_path, category: {name: ""}
    end
    
    assert_template 'categories/new'
    assert_select '#error_explanation'
    
  end
  
end