require 'spec_helper'

describe TwitterWidget do
  has_widgets do |root|
    root << widget('twitter')
  end
  
  
    it "should render :display" do
      render_widget('twitter', :display).should have_selector("h1")
    end
  

end
