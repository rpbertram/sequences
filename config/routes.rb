Rails.application.routes.draw do

  get("/guesses", { :controller => "guesses", :action => "index"})

  get("/show_answer", { :controller => "guesses", :action => "answer"})
end
