# rails g apotomo:widget Groupbar::Dirlist show list
class Groupbar::DirlistWidget < Apotomo::Widget

  def show
    @wid = widget_id
    @summary = false
    render
  end

  def list
    dir = options[:dir]
    ls_opts = 'lrth'
    
    IO.popen("ls -#{ls_opts} #{dir}") {|p| @ls = p.readlines }
    @ls.map! {|l| l.strip}
    @height = @ls.size * 18
    @height = 300 if @height > 300
    @wid = widget_id
    render
  end

end
