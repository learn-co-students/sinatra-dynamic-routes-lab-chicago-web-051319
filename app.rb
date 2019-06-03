require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @sentence = ""
    @number.times do
      @sentence += "#{@phrase} "
    end
    "#{@sentence}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first = params[:word1]
    @second = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    "#{@first} #{@second} #{@third} #{@fourth} #{@fifth}."
  end

  get '/:operation/:number1/:number2' do
    @function = params[:operation]
    @first = params[:number1].to_i
    @second = params[:number2].to_i
    if @function == "add"
      "#{@first + @second}"
    elsif @function == "subtract"
      "#{@first - @second}"
    elsif @function == "multiply"
      "#{@first * @second}"
    elsif @function == "divide"
      "#{@first / @second}"
    else
      "Unknown operator."
    end
  end
end