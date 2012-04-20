# generated using;
# rails g apotomo:widget Groupbar show
class GroupbarWidget < Apotomo::Widget

  has_widgets do
    dirs = options[:dirs]
    dirs.each do |dir|
      dir_name = File.basename dir
      self << widget("groupbar/dirview", "#{widget_id}_#{dir_name}", :dir => dir)
    end
  end
  
  def show
    @dirs = options[:dirs]
    @count = @dirs.size
    render
  end

end
