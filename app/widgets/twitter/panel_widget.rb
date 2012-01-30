class Twitter::PanelWidget < Apotomo::Widget
  # responds_to_event :submit, :with => :process_tweet
  responds_to_event :newTweet, :with => :redraw_list

  has_widgets do
    self << widget("twitter/form", :tweet_form)
  end
  
  def display
    @tweets = Tweet.find(:all)
    render
  end
  
  # def process_tweet(evt)
  #   @tweet = Tweet.new
  #   @tweet.update_attributes(evt[:tweet])
  #   
  #   replace :state => :display
  # end

  def list(tweets)
    render :locals => {:tweets => tweets}
  end
  
  def redraw_list(evt)
    replace "##{widget_id} ul", {:state => :list}, Tweet.find(:all)
  end
  
  # def form
  #   render
  # end
end
