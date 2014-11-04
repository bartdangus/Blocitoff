class ListsController < ApplicationController

  def create
    @list = List.new(params[:list].permit!)

    respond_to do |format|
      if @list.save
        format.html { redirect_to root_path, notice: 'List was successfully created.' }
        format.json { render action: 'show', status: :created, location: @list }
      else
        format.html { render action: 'new' }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @list = List.find(params[:id])
    authorize @list

  end

  def index
    @lists = List.all
   
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end  

end
