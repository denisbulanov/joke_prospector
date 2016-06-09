class SetupsController < ApplicationController
  def index
    @setups = Setup.all
  end

  def show
    @setup = Setup.find(params[:id])
  end

  def new
    @setup = Setup.new
  end

  def create
    @setup = Setup.new
    @setup.body = params[:body]

    if @setup.save
      redirect_to "/setups", :notice => "Setup created successfully."
    else
      render 'new'
    end
  end

  def edit
    @setup = Setup.find(params[:id])
  end

  def update
    @setup = Setup.find(params[:id])

    @setup.body = params[:body]

    if @setup.save
      redirect_to "/setups", :notice => "Setup updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @setup = Setup.find(params[:id])

    @setup.destroy

    redirect_to "/setups", :notice => "Setup deleted."
  end
end
