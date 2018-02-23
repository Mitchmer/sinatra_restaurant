ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK-ENV'].to_s
require_relative 'routes'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Items < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }

end