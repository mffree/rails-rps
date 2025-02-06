Rails.application.routes.draw do
  get("/", { :controller => "universal", :action => "homepage" }) # Ruby finds the controller file named universal_controller.rb, and within that file it finds the class UniversalController, and within that class it finds the method homepage, which I have defined to render(aka display) the file homepage_view_MF
  get("/rock", { :controller => "universal", :action => "rock" })
  get("/paper", { :controller => "universal", :action => "paper" })
  get("/scissors", { :controller => "universal", :action => "scissors" })

end
