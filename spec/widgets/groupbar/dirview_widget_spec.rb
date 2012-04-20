require 'spec_helper'

describe Groupbar::DirviewWidget do
  has_widgets do |root|
    root << widget('groupbar/dirview')
  end
  
  it "should render :show" do
    render_widget('groupbar/dirview', :show).should have_selector("h1")
  end
  
end
