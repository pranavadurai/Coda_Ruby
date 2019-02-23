class SongsController < ApplicationController

  def index
    @songs = Song.all
    puts @songs.name
  end

  def song
    @song = Song.find(params[:id])
  end

end
