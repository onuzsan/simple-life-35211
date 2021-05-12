class SimplesController < ApplicationController
  def index
    @simple = Simple.all
  end


def new
  
  @simple = Simple.new
end

def create
  
  @simple= Simple.new(simple_params)
  if
    @simple.save
     redirect_to root_path
   else
     render :new
   end
  end

  def show
    @simple= Simple.find(params[:id])
  end
   private

   def simple_params
     params.require(:simple).permit(:image, :title, :sentense).merge(user_id: current_user.id)
   end
 end
