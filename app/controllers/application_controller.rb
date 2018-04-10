class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :set, only: [:show,:edit,:update]


  def show
  end

  def new
    result = noun.capitalize.constantize.new
    self.instance_variable_set("@#{noun}", result)
  end

  def create
    result = noun.capitalize.constantize.create(form_params)
    self.instance_variable_set("@#{noun}", result)
    redirect_to url_for controller: :"#{self.controller_name}", action: :'show', id: result.id
  end

  def edit
  end

  def update
    set.update(form_params)
    redirect_to url_for controller: :"#{self.controller_name}", action: :'show', id: set.id
  end

  private

  def form_params
    columns = noun.capitalize.constantize.column_names
    columns.map { |column| column.to_sym }
    params.require(noun.to_sym).permit(columns)
  end

  def noun
    self.controller_name.singularize
  end

  def set
    result = noun.capitalize.constantize.find(params[:id])
    self.instance_variable_set("@#{noun}", result)
  end

end
