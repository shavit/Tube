class VideosController < ApplicationController

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.limit(12)
  end

end
