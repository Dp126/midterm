require 'Sinatra'
require './expense.rb'

expenses = []

def add(amount)
	amount++
end

get '/' do
	@id = params[:id]
	@item = params[:item]
	@amount = params[:amount]
	"<h1>Total expenses: #{add(amount)}</h1>"
	erb :index
end

get '/new' do
	@id = params[:id]
	@item = params[:item]
	@amount = params[:amount]
	erb :new
end

get '/save' do
	redirect to '/'
end

get '/show/:id' do
	erb :show
end

