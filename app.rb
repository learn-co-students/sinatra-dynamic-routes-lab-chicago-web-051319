require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get  "/square/:number"  do
    @num = params[:number].to_i
    @new = @num * @num
    "#{@new}"
  end

  get  "/say/:number/:phrase"  do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @new_phrase = ""
    @num.times do @new_phrase += @phrase end
      # binding.pryß
    @new_phrase
  end

  get  "/say/:word1/:word2/:word3/:word4/:word5"  do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2"  do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i


    if @operation == "add"
      @operation = :+
      elsif @operation == "subtract"
        @operation = :-
      elsif @operation == "multiply"
        @operation = :*
    else @operation ==  "divide"
      @operation = :/
    end
    # binding.pry
    @final = @num1.public_send(@operation, @num2)

    "#{@final}"

  end

end
