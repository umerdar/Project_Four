require 'sinatra'
require 'sinatra/reloader'
require 'mustache'
require './db/connection.rb'
require './lib/user.rb'
require './lib/category.rb'
require './lib/activity.rb'
require './lib/tag.rb'
# require './lib/tag_to_activity.rb'
require 'pry'
require 'active_record'

enable(:sessions)

post '/sessions' do
# binding.pry
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect "/"
  end
end

post '/sessions/destroy' do
  session.clear
  redirect '/'
end


get ('/users/:user_id/categories/:category_id') do
  binding.pry

end

get ('/') do
  if session[:user_id] != nil
    redirect "/users/#{session[:user_id]}"
  else
  File.read('./public/index.html')
  end
end

get ('/users/new') do
  File.read('./public/new_user.html')
end

post ('/users') do
new_user = User.create({name: params["name"], email: params["email"], password: params["password"]})
# user = User.last.id
redirect "users/#{new_user.id}"
end

get '/users/:id' do
@user = User.find(params["id"])
 render(:erb, :users)
# 1
# 2
# 3
end

get ('/users/:id/activities') do

  if session[:user_id] != nil
  @user = User.find(params["id"])
# @activity = Activity.find(params["activity_id"])
 render(:erb, :user_activities) #you have to render it so it can be read. In rails, that's automatic. talk about how the @ sign in rails makes it so you don't have to render, but maybe you also have to render user: user if you had "user" instead of "@user". What's the difference????

  else
     redirect '/'
  end
end


get '/categories' do

@category = Category.all
# binding.pry
render(:erb, :categories)

# redirect '/categoryredirect'

end

post '/categoryredirect' do
@category = Category.find_by(params["id"])
binding.pry
# redirect "/categories/#{params['category-id']}"
end

get '/categories/:id' do

end











# get "/" do
#   #right now I am using two instance variables!
#   #if you are working with an active record object, you can use dot notation to grab the attributes
#   #@andy.hair = "red"
#   #basically, this means you can just send one instance variable into the view
#   @user_name = "andy"
#   @user_hair = "red"
#    render( :erb, :index)
# end




