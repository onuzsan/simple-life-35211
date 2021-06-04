class SimplesController < ApplicationController
  def index
    @simple = Simple.all.order('created_at DESC')
  end

  def new
    @simple = Simple.new
  end

  def create
    @simple = Simple.new(simple_params)
    if
      @simple.save
      redirect_to root_path
    else
      render :new
     end
    end

  def show
    @simple = Simple.find(params[:id])
    @comment = Comment.new
    @comments = @simple.comments.includes(:user)
  end

  def category
    @item = Simple.find_by(category_id: params[:id])
    @items = Simple.where(category_id: params[:id]).order('created_at DESC')
  end

   private

  def simple_params
    params.require(:simple).permit(:image, :title, :sentense, :category_id).merge(user_id: current_user.id)
  end
 end
