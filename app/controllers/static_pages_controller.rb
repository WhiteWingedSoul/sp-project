class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
    @posts = @posts.search(params[:search]) if params[:search].present?
  end
end
