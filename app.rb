require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @result = ""
    params[:number].to_i.times do
      @result += "#{params[:phrase]}"
    end
    @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    #puts "#{params[:operation]}"
    a = params[:number1].to_i
    b = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{a + b}"
    when "subtract"
      "#{a - b}"
    when "multiply"
      "#{a * b}"
    when "divide"
      "#{a / b}"
    end
  end
end