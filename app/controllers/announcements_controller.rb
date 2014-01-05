class AnnouncementsController < ApplicationController
  def index
    @announcement = Announcement.all
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def new
    @announcement = Announcement.new
  end

def create
  @announcement = Announcement.new(params[:announcement])
  if @announcement.save
    flash[:notice] = "Job Announcement was saved."
    redirect_to @announcement
  else
    flash[:error] = "There was an error saving the job announcement. Please try again."
    render :new
  end
end

def edit
@announcement = Announcement.find(params[:id])
end

  def update
    @announcement = announcement.find(params[:id])
    if @announcement.update_attributes(params[:announcement])
      flash[:notice] = "Job Announcement was updated."
      redirect_to @announcement
    else
      flash[:error] = "There was an error saving the Job Announcement. Please try again."
      render :edit
    end

end
end
