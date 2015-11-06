require 'sinatra'
require 'pry'
require "sinatra/reloader" if development?
require_relative './lib/Calculator.rb'
require_relative './lib/Saver.rb'

get "/" do
  erb(:index)
end

post "/" do
  action = params[:action]
  if action == 'save'
    @result = params[:final_result]
  end
  erb(:index)
end

post "/calculate" do
  operation = params[:operation]
  @number1 = params[:number1].to_f
  @number2 = params[:number2].to_f

  case operation
  when 'add'
    @result = Calculator.new.add(@number1,@number2)
    @operator = "+"
  when 'substract'
    @result = Calculator.new.substract(@number1,@number2)
    @operator = "-"
  when 'multiply'
    @result = Calculator.new.multiply(@number1,@number2)
    @operator = "*"
  when 'divide'
    @result = Calculator.new.divide(@number1,@number2)
    @operator = "/"
  end

  erb(:calculate)
  
end