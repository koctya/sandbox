require 'spec_helper'

describe Groupbar::DirlistWidget do
  has_widgets do |root|
    root << widget('groupbar/dirlist')
  end
  
  it "should render :show" do
    render_widget('groupbar/dirlist', :show).should have_selector("h1")
  end
  
  it "should render :list" do
    render_widget('groupbar/dirlist', :list).should have_selector("h1")
  end
  
end
