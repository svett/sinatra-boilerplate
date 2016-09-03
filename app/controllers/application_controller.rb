require "rack/csrf"
require 'sinatra'
require 'sinatra/reloader'

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  use Rack::Session::Cookie, :secret => ENV.fetch('COOKIE_SECRET')
  use Rack::Csrf, :raise => true
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  configure :development do
    # enable hot reloader
    register Sinatra::Reloader
    # don't enable logging when running tests
    enable :logging
  end

  # configuration in production
  configure :production do
    enable :logging
  end
end
