class SongsController < ApplicationController

  def index
    @songs = Song.all
    puts @songs.name
  end

  def show  
    @song = Song.find_by(rank: params[:id])
  end

end
