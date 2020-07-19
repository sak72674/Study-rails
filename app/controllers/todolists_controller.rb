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
  	@charts = Chart.all
  end

  def show
  	@chart = Chart.find(params[:id])
  end

  private
  def chart_params
  	params.require(:chart).permit(:title, :date, :body)
  end
end