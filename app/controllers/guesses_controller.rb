class GuessesController < ApplicationController
def index
  @first = params["first_number"].to_i
  @second = params["second_number"].to_i
  @third = params["third_number"].to_i

  if @first == nil || @second == nil || @third == nil
  elsif @first < @second && @second < @third
    @outcome = "Yes!"
  else
    @outcome = "No."
  end

if @first == nil || @second == nil || @third == nil
  else
  g = Guess.new
  g.first_num = @first
  g.second_num = @second
  g.third_num = @third
  g.outcome = @outcome
  g.save
end

  @list = Guess.all

  render("guesses/index.html.erb")
end

def clear_guesses
  Guess.delete_all
  render("guesses/index.html.erb")
end


def answer
@user_answer = params["rule"]
render("guesses/answer.html.erb")
end

end
