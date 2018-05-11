class PostsController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!


  # GET /posts
  def index
    @posts = Post.all
    puts current_admin
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.save
  end

  # PATCH/PUT /posts/1
  def update
    @post.update(post_params)
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :admin_id)
    end
end
