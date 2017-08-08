class AuthorsController < ApplicationController


  get '/authors/new' do

    erb :"authors/new"
  end

end