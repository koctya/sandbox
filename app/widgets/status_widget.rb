# rails g apotomo:widget Status show
class StatusWidget < Apotomo::Widget

  has_widgets do
    uri = options[:uri]
    user = options[:user]
    self << widget( "status/viewer", :viewer, :uri => uri, :user => user)
  end
  
  def show
    uri = options[:uri]
    user = options[:user]    
    render
  end

end
