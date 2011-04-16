require 'test_helper'

class EditWikiTest < ActionDispatch::IntegrationTest
  test "should create" do
    visit wiki_path(:name => "faq")
    assert_equal edit_wiki_path(:name => "faq"), current_path
    
    fill_in 'page_title', :with => "Frequently Asked Questions"
    fill_in 'page_body',  :with => "bla bla bla"
    
    assert_difference('Wiki.count') do
      click_button 'page_submit'
    end
    
    wiki = Wiki.last
    assert_equal "Frequently Asked Questions", wiki.title
    assert_equal "bla bla bla", wiki.body
  end

  test "should update" do
    visit edit_wiki_path(:name => wiki(:frontpage).name)
    fill_in 'page_title', :with => "Frequently Asked Questions"
    fill_in 'page_body',  :with => "bla bla bla"
    
    assert_no_difference('Wiki.count') do
      click_button 'page_submit'
    end
    
    wiki(:frontpage).reload
    assert_equal "Frequently Asked Questions", wiki(:frontpage).title
    assert_equal "bla bla bla", wiki(:frontpage).body
  end
end
