require 'spec_helper'

describe GroupbarWidget do
  has_widgets do |root|
    root << widget('groupbar')
  end
  
  it "should render :show" do
    render_widget('groupbar', :show).should have_selector("h1")
  end
  
end
