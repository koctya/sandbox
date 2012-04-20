# rails g apotomo:widget Status::Viewer show
class Status::ViewerWidget < Apotomo::Widget

  def show
    uri = options[:uri]
    # @status = `rake about`
    @status = "Placeholder"
    @height = @status.size*18+40
    @height = 300 if @height > 300
    
    render
  end

end
