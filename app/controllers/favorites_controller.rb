class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: current_user.id).order(created_at: :desc)
  end
  def create
    id=params[:id]
    post= Post.find(id)
    @favorite= Favorite.new(user_id: current_user.id, post_id: id, image: post.image )
    @favorite.save
      redirect_to posts_path
  end
end

