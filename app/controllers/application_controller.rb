class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def load_yaml(filename)
    yaml = ""
    if filename && File.exists? filename
      yaml = YAML.load_file filename
    end
    yaml
  end
  
  #--------------------------------------------------------------------------
  # Method: pref_val
  #
  # returns the value of a preference key from the yaml file
  #         , sec - secondary key
  #--------------------------------------------------------------------------
  def pref_val(key, sec=null)
    current = cookies["current_pref_file"]
    current = Sandbox::Application.config.default_preference_file unless current
    preference = load_yaml current
    if sec
      val = preference[key.to_s][sec.to_s]
    else
      val = preference[ket.to_s]
    end
    val
  end
end
