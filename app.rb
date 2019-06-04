require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:num' do
    @number = params[:num]
    @number = @number.to_i * @number.to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @number = @number.to_i
    @phrase = params[:phrase]
    phrase = @phrase.clone
    @string = ""
    n = @number
    while n > 0 
      @string << phrase
      n -= 1
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word_one = params[:word1] 
      @word_two = params[:word2]
      @word_three = params[:word3]
      @word_four = params[:word4]
      @word_five = params[:word5]
      "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number_one = params[:number1]
    @number_one = @number_one.to_i
    @number_two = params[:number2]
    @number_two = @number_two.to_i
    if @operation == 'add'
      "#{@number_one + @number_two}"
    elsif @operation == 'subtract'
      "#{@number_one - @number_two}"
    elsif @operation == 'multiply'
      "#{@number_one * @number_two}"
    elsif @operation == 'divide'
      "#{@number_one / @number_two}"
    end
  end



end