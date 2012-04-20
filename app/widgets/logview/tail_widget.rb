# rails g apotomo:widget Logview::Tail show refresh
class Logview::TailWidget < Apotomo::Widget
  responds_to_event :refresh

  def show
    @logfile = options[:logfile]
    if File.exists? @logfile
      tail = `tail -n 18 #{@logfile}`
      render :locals => {:tail => tail}
    else
      render :template => 'logview/error'
    end
  end

  def refresh(event)
    # logger.debug "received event: #{event}"
    replace :state => :show
  end

end
