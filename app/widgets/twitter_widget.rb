class TwitterWidget < Apotomo::Widget
  responds_to_event :submit, :with => :process_tweet

  def display
    @tweets = Tweet.find(:all)
    render
  end
  
  def process_tweet(evt)
    Tweet.new(:text => evt[:text]).save
    
    replace :state => :display
  end

  def list(tweets)
    render :locals => {:tweets => tweets}
  end
  
  def form
    render
  end
end
