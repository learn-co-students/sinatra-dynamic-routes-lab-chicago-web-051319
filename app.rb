require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase}" * @number
  end

  get '/say/:world1/:world2/:world3/:world4/:world5' do
    "#{params[:world1]} #{params[:world2]} #{params[:world3]} #{params[:world4]} #{params[:world5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "subtract"
      "#{@number2 - @number1}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end

end
