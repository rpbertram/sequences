class GuessesController < ApplicationController
def index
  @first = params["first_number"]
  @second = params["second_number"]
  @third = params["third_number"]

  g = Guess.new
  g.first_num = params["first_number"]
  g.second_num = params["second_number"]
  g.third_num = params["third_number"]
  g.save

  @list = Guess.all

  render("guesses/index.html.erb")
end

def answer
@user_answer = params["rule"]
render("guesses/answer.html.erb")
end

end
