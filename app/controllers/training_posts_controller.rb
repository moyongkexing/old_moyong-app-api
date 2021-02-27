class TrainingPostsController < ApplicationController
  def index
    @training_posts = TrainingPost.all
    render json: @training_posts
  end

  def create
    @training_post = TrainingPost.create(name: params[:name])
    render json: @training_post
  end

  def update
    @training_post = TrainingPost.find(params[:id])
    @training_post.update_attributes(name: params[:name])
    render json: @training_post
  end

  def destroy
    @training_post = TrainingPost.find(params[:id])
    if @training_post.destroy
      head :no_content, status: :ok
    else
      render json: @training_post.errors, status: :unprocessable_entity
    end
  end
end
