class SecondstoriesController < ApplicationController
  def index
    @secondstories = Secondstory.all
  end

  def show
    @secondstory = Secondstory.find(params[:id])
  end

  def new
    @secondstory = Secondstory.new
  end

  def create
    @secondstory = Secondstory.new
    @secondstory.punch_line = params[:punch_line]
    @secondstory.body = params[:body]
    @secondstory.reinterpretation_id = params[:reinterpretation_id]

    if @secondstory.save
      redirect_to "/secondstories", :notice => "Secondstory created successfully."
    else
      render 'new'
    end
  end

  def edit
    @secondstory = Secondstory.find(params[:id])
  end

  def update
    @secondstory = Secondstory.find(params[:id])

    @secondstory.punch_line = params[:punch_line]
    @secondstory.body = params[:body]
    @secondstory.reinterpretation_id = params[:reinterpretation_id]

    if @secondstory.save
      redirect_to "/secondstories", :notice => "Secondstory updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @secondstory = Secondstory.find(params[:id])

    @secondstory.destroy

    redirect_to "/secondstories", :notice => "Secondstory deleted."
  end
end
