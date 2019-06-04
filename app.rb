require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number=params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    @number=params[:number].to_i
    @phrase=params[:phrase]*@number
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number1 +@number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 -@number2}"
    elsif params[:operation] == "multiply"
      "#{@number1*@number2}"
    elsif params[:operation] == "divide"
      "#{@number1/@number2}"
    end
  end
end
