require 'spec_helper'

describe Twitter::FormWidget do
  has_widgets do |root|
    root << widget('twitter/form')
  end
  
  
    it "should render :display" do
      render_widget('twitter/form', :display).should have_selector("h1")
    end
  

end
