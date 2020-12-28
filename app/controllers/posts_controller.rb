class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    new_post = Post.create(user_id: params[:user_id])
    render json: params
  end

  def index
    render json: Post.all
  end

  def update
    update_post = Post.update(content: params[:content])
    render json: params
  end

  def destroy
    destroy_post = Post.destroy(params[:id])
  end
end
