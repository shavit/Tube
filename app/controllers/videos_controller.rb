class VideosController < ApplicationController

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.limit(32)
  end

  # GET /videos/:id
  # GET /videos/:id.json
  def show
    @video = Video.find(params[:id])
    @related_videos = Video.all.limit(24)
  end

end
