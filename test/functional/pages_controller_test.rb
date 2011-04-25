require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = pages(:about)
  end

  test "should get show" do
    get :show, :name => @page.name
    assert_response :ok
    assert_select "h1", @page.title
  end

  test "show should redirect to edit" do
    get :show, :name => "faq"
    assert_redirected_to edit_page_url(:name => "faq")
  end

  test "show with path should redirect to edit" do
    get :show, :path => "help", :name => "contact_us"
    assert_redirected_to edit_page_url(:path => "help", :name => "contact_us")
  end

  test "should edit existing page" do
    get :edit, :name => @page.name
    assert_response :ok
    assert_select "form[action=" + page_path(@page.path, @page.name) + "]"
  end

  test "should edit unknown page" do
    get :edit, :name => "faq"
    assert_response :ok
    assert_nil assigns(:page).path
    assert_equal "faq", assigns(:page).name
    assert_select "form[action=" + page_path(:name => "faq") + "]"
  end

  test "should update" do
    put :update, :name => @page.name, :page => { :body => "some body" }
    assert_redirected_to page_path(@page.path, @page.name)
    assert_equal "some body", @page.reload.body
  end
end
