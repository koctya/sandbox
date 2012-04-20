require 'spec_helper'

describe Logview::TailWidget do
  has_widgets do |root|
    root << widget('logview/tail')
  end
  
  it "should render :show" do
    render_widget('logview/tail', :show).should have_selector("h1")
  end
  
  it "should render :refresh" do
    render_widget('logview/tail', :refresh).should have_selector("h1")
  end
  
end
