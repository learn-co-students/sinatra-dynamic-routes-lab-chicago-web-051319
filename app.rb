require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    square = @num.to_i * @num.to_i
     "#{square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrases =""

    @num.times do
      @phrases = @phrases + @phrase
    end

    "#{@phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    @words = @w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."

    "#{@words}"

  end

  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result

    if @o == "add"
      @result = @num1+@num2
    elsif @o == "subtract"
      @result = @num1-@num2
    elsif @o == "multiply"
      @result = @num1*@num2
    elsif @o == "divide"
      @result = @num1/@num2
    end

    "#{@result}"

  end





end
