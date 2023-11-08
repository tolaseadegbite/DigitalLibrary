class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user
    before_action :find_channel, only: [:user_likes, :user_comment_likes]
  
    def show
  
    end
  
    def edit
    end
  
    def update
      if @user.update(profile_params)
        respond_to do |format|
          format.html { redirect_to profile_path(current_user.username), notice: 'Profile updated.' }
          # format.turbo_stream
        end
      else
        flash[:alert] = current_user.errors.full_messages.join(", ")
        redirect_to profile_path(current_user.username)
      end
    end
  
    def already_read
      @already_read = @user.read_resources
    end
  
    def currently_reading
      @currently_reading = @user.reading_resources
    end
  
    def want_to_read
      @potential_reads = @user.potential_read_resources
    end
    
    def loans
      @loans = @user.loans
    end
  
    def user_likes
      @likes = @user.liked_episodes
    end
  
    def user_comment_likes
      render 'profiles/user_likes'
    end
  
    def trending
    end
  
    def history
    end
  
    private
  
    def profile_params
      params.require(:user).permit(:firstname, :lastname, :bio, :email, :avatar, :username)
    end
    
    def find_user
      @user ||= User.find_by(username: params[:username])
    end
  
    def find_channel
      @potential_reads ||= @user.potential
    end
  
    def find_episodes
      @channel ||= @user.episodes
    end
  end
  