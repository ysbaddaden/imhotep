require 'test_helper'

class RoutesTest < ActionController::TestCase
  test "root" do
    assert_routing "/", :controller => "home", :action => "index"
  end

  test "show page" do
    assert_routing "/about",            :controller => "pages", :action => "show", :name => "about"
    assert_routing "/help",             :controller => "pages", :action => "show", :name => "help"
    assert_routing "/help/howto",       :controller => "pages", :action => "show", :name => "howto", :path => "help"
    assert_routing "/a/very/long/path", :controller => "pages", :action => "show", :name => "path",  :path => "a/very/long"
  end

  test "edit page" do
    assert_routing "/about/edit",            :controller => "pages", :action => "edit", :name => "about"
    assert_routing "/help/edit",             :controller => "pages", :action => "edit", :name => "help"
    assert_routing "/help/howto/edit",       :controller => "pages", :action => "edit", :name => "howto", :path => "help"
    assert_routing "/a/very/long/path/edit", :controller => "pages", :action => "edit", :name => "path",  :path => "a/very/long"
  end

  test "update page" do
    assert_routing({:method => :put, :path => "/about"},            :controller => "pages", :action => "update", :name => "about")
    assert_routing({:method => :put, :path => "/help"},             :controller => "pages", :action => "update", :name => "help")
    assert_routing({:method => :put, :path => "/help/howto"},       :controller => "pages", :action => "update", :name => "howto", :path => "help")
    assert_routing({:method => :put, :path => "/a/very/long/path"}, :controller => "pages", :action => "update", :name => "path",  :path => "a/very/long")
  end

  test "destroy page" do
    assert_routing({:method => :delete, :path => "/about"},            :controller => "pages", :action => "destroy", :name => "about")
    assert_routing({:method => :delete, :path => "/help"},             :controller => "pages", :action => "destroy", :name => "help")
    assert_routing({:method => :delete, :path => "/help/howto"},       :controller => "pages", :action => "destroy", :name => "howto", :path => "help")
    assert_routing({:method => :delete, :path => "/a/very/long/path"}, :controller => "pages", :action => "destroy", :name => "path",  :path => "a/very/long")
  end

  test "wiki" do
    assert_routing "/wiki/FrontPage",            :controller => "wiki", :action => "show", :name => "FrontPage"
    assert_routing "/wiki/Help::FrontPage",      :controller => "wiki", :action => "show", :name => "Help::FrontPage"
    assert_routing "/wiki/Help::FrontPage/edit", :controller => "wiki", :action => "edit", :name => "Help::FrontPage"
    assert_routing({:method => :put,     :path => "/wiki/Help"}, :controller => "wiki", :action => "update",  :name => "Help")
    assert_routing({:method => :delete,  :path => "/wiki/Help"}, :controller => "wiki", :action => "destroy", :name => "Help")
  end
end
