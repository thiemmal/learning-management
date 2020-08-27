class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_parameter)
    redirect_to user_posts_path(current_user)
  end

  private

  def post_parameter
    params.require(:post).permit(:subject, :content, :image, :study_time).merge(user_id: current_user.id)
end
