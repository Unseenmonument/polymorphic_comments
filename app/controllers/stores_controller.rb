class StoresController < ApplicationController
  def new
    @store = Store.new
  end

  def edit
  end

  def show
    @store = Store.find(params[:id])
    @comments = Comment.all
  end
  
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'Tottle was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end
  
  private
  def store_params
    params.require(:store).permit(:name, :location, :founded, :bio)
  end
end
