class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do 
    # @titles = Title.all
    # @landmarks = Landmark.all
    erb :'/landmarks/new'
  end

  post '/landmarks' do 
    if !params[:landmark][:name].empty?
      @landmark = Landmark.create(name: params[:landmark][:name])
    end
    redirect "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do 
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    redirect "/landmarks/#{@landmark.id}"
  end

end

