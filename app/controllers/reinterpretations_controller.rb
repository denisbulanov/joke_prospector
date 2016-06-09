class ReinterpretationsController < ApplicationController
  def index
    @reinterpretations = Reinterpretation.all
  end

  def show
    @reinterpretation = Reinterpretation.find(params[:id])
  end

  def new
    @reinterpretation = Reinterpretation.new
  end

  def create
    @reinterpretation = Reinterpretation.new
    @reinterpretation.connector = params[:connector]
    @reinterpretation.assumption_id = params[:assumption_id]
    @reinterpretation.body = params[:body]

    if @reinterpretation.save
      redirect_to "/reinterpretations", :notice => "Reinterpretation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @reinterpretation = Reinterpretation.find(params[:id])
  end

  def update
    @reinterpretation = Reinterpretation.find(params[:id])

    @reinterpretation.connector = params[:connector]
    @reinterpretation.assumption_id = params[:assumption_id]
    @reinterpretation.body = params[:body]

    if @reinterpretation.save
      redirect_to "/reinterpretations", :notice => "Reinterpretation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @reinterpretation = Reinterpretation.find(params[:id])

    @reinterpretation.destroy

    redirect_to "/reinterpretations", :notice => "Reinterpretation deleted."
  end
end
