require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest
  
  def setup
    @category = Category.create(name: "test1")
    @category2 = Category.create(name: "test2")
    @category3 = Category.create(name: "test3")
    @category4 = Category.create(name: "test4")
    @category5 = Category.create(name: "test5")
    @category6 = Category.create(name: "test6")
  end
  
  test "should show categories listing" do
    get categories_path
    assert_template 'categories/index'
    assert_select "a[href=?]", category_path(@category), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
    assert_select "a[href=?]", category_path(@category3), text: @category3.name
    assert_select "a[href=?]", category_path(@category4), text: @category4.name
    assert_select "a[href=?]", category_path(@category5), text: @category5.name
    assert_select "a[href=?]", category_path(@category6), text: @category6.name
  end
  
end