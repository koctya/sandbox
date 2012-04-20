class DirmonController < ApplicationController
  
  has_widgets do |root|
    #logfile = pref_val :logfile
    #srv_uri = pref_val :srv_uri
    #user = pref_val: :user
    logfile = Rails.root.join 'log', 'development.log'
    srv_uri = 'druby://localhost:6789'
    user = 'kal'
    groups = %w[. .. config]
    groups.map! {|dir| File.expand_path dir}
    #binding.pry
    root << widget( :status, :uri => srv_uri, :user => user)
    groups.each do |group|
      name = File.basename group
      dirs = Dir.entries(group).reject! {|f| f[0] == "."}
      dirs = dirs.select {|d| File.directory?(File.join group, d)}
      dirs.map! {|f| File.join(group, f)}
      rood << widget(:groupbar, name, :dirs => dirs)
    end
    rood << widget(:logview, :logfile => logfile)    
  end
  
  def show
    @severity = ""
    @alert_msg = ""
    groups = %w[. .. config]
    groups.map! {|dir| File.basename File.expand_path(dir)}
    
    respond_to do |format|
      format.html
      format.json {render json: @groups}
    end
  end
  
  def alert
    # .alert-box.success
    #   Dude! it works
    # .alert-box.warning
    #   Cautione is advised
    # .alert-box.error
    #   Danger Will Robinson!!!
  end
end
