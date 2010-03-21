require 'spec_helper'

describe PagesController do
  
  integrate_views
  
  #Delete these examples and add some real ones
  it "should use PagesController" do
    controller.should be_an_instance_of(PagesController)
  end


  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  %w{ Home Contact About}.each do |title|

    it "should have the right title" do
      get "#{title.downcase}"
      response.should have_tag('title',
                               "Ruby on Rails Tutorial Sample App | #{title}")
    end
  end
end
