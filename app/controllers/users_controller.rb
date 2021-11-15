class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def search
    @searchs = User.search_for(params[:name])
  end

  def show
    user = params[:id]
    @posts = Post.users(user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:user).permit(:username, :email)
    end
end
