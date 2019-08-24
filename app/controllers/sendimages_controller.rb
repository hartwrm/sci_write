class SendimagesController < ApplicationController

def index
  @images = ImagePost.all
end

def show
  @image = ImagePost.find(params[:id])
end

def create
  @image = Image.new(form_params)
  @image.save
  redirect_to sendimages_path(@images)
end

def destroy
  @image.destroy
end

private

def form_params
  params.require(:imagepost).permit(:title, :image)
end

end
