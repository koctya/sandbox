require 'spec_helper'

describe LogviewWidget do
  has_widgets do |root|
    root << widget('logview')
  end
  
  it "should render :show" do
    render_widget('logview', :show).should have_selector("h1")
  end
  
  it "should render :search" do
    render_widget('logview', :search).should have_selector("h1")
  end
  
end
