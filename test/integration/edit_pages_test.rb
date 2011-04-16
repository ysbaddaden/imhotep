require 'test_helper'

class EditPagesTest < ActionDispatch::IntegrationTest
  test "should create" do
    visit page_path(:name => "faq")
    assert_equal edit_page_path(:name => "faq"), current_path
    
    fill_in 'page_title', :with => "Frequently Asked Questions"
    fill_in 'page_body',  :with => "bla bla bla"
    
    assert_difference('Page.count') do
      click_button 'page_submit'
    end
    
    page = Page.last
    assert_equal "Frequently Asked Questions", page.title
    assert_equal "bla bla bla", page.body
  end

  test "should update" do
    visit edit_page_path(:name => pages(:about).name)
    fill_in 'page_title', :with => "Frequently Asked Questions"
    fill_in 'page_body',  :with => "bla bla bla"
    
    assert_no_difference('Page.count') do
      click_button 'page_submit'
    end
    
    pages(:about).reload
    assert_equal "Frequently Asked Questions", pages(:about).title
    assert_equal "bla bla bla", pages(:about).body
  end
end
