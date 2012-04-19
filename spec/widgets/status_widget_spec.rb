require 'spec_helper'

describe StatusWidget do
  has_widgets do |root|
    root << widget('status')
  end
  
  it "should render :show" do
    render_widget('status', :show).should have_selector("h1")
  end
  
end
