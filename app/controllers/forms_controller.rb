class FormsController < ApplicationController
  def index
    @form = Form.all
  end

  def show
    @form = Form.find(params[:id])
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to form_path(@form)
    else
      render :new
    end
  end

  private

  def form_params
    params.require(:form).permit(:email, :first_name, :last_name, :business_mobile, :company_name, :country, :description_of_technology_need, :primary_industry, areas_of_interest: [], mode_of_collaboration: [])
  end
end
