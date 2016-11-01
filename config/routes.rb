Rails.application.routes.draw do

  get("/", { :controller => "guesses", :action => "clear_guesses"})
  get("/all_guesses", { :controller => "guesses", :action => "index"})
  get("/clear_guesses", { :controller => "guesses", :action => "clear_guesses"})
  get("/show_answer", { :controller => "guesses", :action => "answer"})

end
