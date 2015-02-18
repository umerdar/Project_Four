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


