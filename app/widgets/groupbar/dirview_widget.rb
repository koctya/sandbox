# rails g apotomo:widget Groupbar::Dirview show
class Groupbar::DirviewWidget < Apotomo::Widget
  has_widgets do
    dir = options[:dir]
    self << widget("groupbar/dirlist", "#{widget_id}_dirlist", :dir => dir)
  end
  
  def show
    @dir = options[:dir]
    @name = File.basename @dir
    #binding.pry
    #dir = dir.select {|d| File.directory?(File.join(path, d))}
    dirs = Dir.entries(@dir).reject! {|f| f[0] == "."}
    @count = dirs.size
    @wid = "#{@parent.name}_#{widget_id}"
    @cwid = "#{@wid}_dirlist"
    render
  end

end
