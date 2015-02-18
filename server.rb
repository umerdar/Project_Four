require 'sinatra'
require 'sinatra/reloader'
require 'mustache'
require './lib/user.rb'
require './lib/category.rb'
require './lib/activity.rb'
require './lib/tag.rb'
# require './lib/tag_to_activity.rb'
require 'pry'
require 'active_record'

get ('/') do
  File.read('./public/index.html')
end

get ('/users/new') do
  # render form
end

post ('/users') do
new_user = User.create(params)
# user = User.last.id
redirect to "users/#{new_user.id}"
end

get ('users/:id') do
user = User.find(params["id"])
end




