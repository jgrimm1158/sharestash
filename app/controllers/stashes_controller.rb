class StashesController < ApplicationController
  before_action :set_stash, only: [:show, :edit, :update, :destroy]
  def index
    @stashes = Stash.all
  end

  
  def show
  end

  
  def new
    @stash = Stash.new
  end

  
  def edit
  end

  def create
    @stash = Stash.new(stash_params)
    if @stash.save
      redirect_to @stash, notice: 'Stash was successfully Uploaded'
    else
      render action: 'new'
    end
  end

  def update
    if @stash.update(stash_params)
      redirect_to @stash, notice: 'Stash was successfully Updated.'
    else
      render action: 'edit'
    end
  end


  def destroy
    @stash.destroy
    redirect_to pins_url
  end

  private
    
    def set_stash
      @stash = Stash.find(params[:id])
    end

    
    def stash_params
      params.require(:stash).permit(:description)
    end
end
