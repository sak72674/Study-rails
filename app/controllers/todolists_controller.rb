class TodolistsController < ApplicationController
  def new
  	@chart = Chart.new
  end

  def create
  	chart = Chart.new(chart_params)
  	chart.save
  	redirect_to todolist_path(chart.id)
  end

  def index
  	@charts = Chart.all.order(created_at: :desc)
  end

  def show
  	@chart = Chart.find(params[:id])
  end

  def edit
    @chart = Chart.find(params[:id])
  end

  def update
    chart = Chart.find(params[:id])
    chart.update(chart_params)
    redirect_to todolist_path(chart.id)
  end

  def destroy
    chart = Chart.find(params[:id])
    chart.destroy
    redirect_to todolists_path
  end

  private
  def chart_params
  	params.require(:chart).permit(:title, :date, :body)
  end
end
