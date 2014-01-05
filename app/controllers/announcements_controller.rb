class AnnouncementsController < ApplicationController
  def index
    @announcement = Announcement.all
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def new
  end

  def edit
  end
end
