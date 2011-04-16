require 'test_helper'

class WikiControllerTest < ActionController::TestCase
  setup do
    @wiki = wiki(:frontpage)
  end

  test "should get show" do
    get :show, :name => @wiki.name
    assert_response :ok
    assert_select "h1", @wiki.title
  end

  test "show should redirect to edit" do
    get :show, :name => "faq"
    assert_redirected_to edit_wiki_url(:name => "faq")
  end

  test "should edit existing page" do
    get :edit, :name => @wiki.name
    assert_response :ok
    assert_select "form[action=" + wiki_path(@wiki.path, @wiki.name) + "]"
  end

  test "should edit unknown page" do
    get :edit, :name => "faq"
    assert_response :ok
    assert_nil assigns(:page).path
    assert_equal "faq", assigns(:page).name
    assert_select "form[action=" + wiki_path(:name => "faq") + "]"
  end

  test "should update" do
    put :update, :name => @wiki.name, :page => { :body => "some body" }
    assert_redirected_to wiki_path(@wiki.path, @wiki.name)
    assert_equal "some body", @wiki.reload.body
  end
end
