class GuessesController < ApplicationController
def index
  @first = params["first_number"]
  @second = params["second_number"]
  @third = params["third_number"]

  render("guesses/index.html.erb")
end

def answer
@user_answer = params["rule"]
render("guesses/answer.html.erb")
end

end
