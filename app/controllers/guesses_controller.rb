class GuessesController < ApplicationController
def index

  render("guesses/index.html.erb")
end

def answer
@user_answer = params["rule"]
render("guesses/answer.html.erb")
end

end
