# rails g apotomo:widget Logview show search
class LogviewWidget < Apotomo::Widget

  has_widgets do
    logfile = options[:logfile]
    self << widget("logview/tail", :tail, :logfile => logfile)
  end
  
  def show
    @logfile = options[:logfile]
    #binding.pry
    render
  end

  def search
    render
  end

end
