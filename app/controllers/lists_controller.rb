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


end
