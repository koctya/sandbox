require 'spec_helper'

describe Status::ViewerWidget do
  has_widgets do |root|
    root << widget('status/viewer')
  end
  
  it "should render :show" do
    render_widget('status/viewer', :show).should have_selector("h1")
  end
  
end
