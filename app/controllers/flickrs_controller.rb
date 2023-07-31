class FlickrsController < ApplicationController
  
  def home
    flickr = Flickr.new
    if params[:username]
      begin
        @user = flickr.people.findByUsername username: params[:username]
        @list = flickr.photos.search user_id: @user.id
      rescue StandardError
        flash[:alert] = "user not found!"
        redirect_to root_path
      end
    end

  end
end
