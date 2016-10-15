class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.order('LOWER(name)')
  end

  def show
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company, notice: "#{@company.name} was successfully created."
    else
      render :new
    end
  end

  def update
    if @company.update(company_params)
      redirect_to @company, notice: "#{@company.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to companies_url, notice: "#{@company.name} was successfully destroyed."
  end

  private

  def set_company
    @company = Company.find(params[:id])
  rescue
    redirect_to root_url
  end

  def company_params
    params.require(:company).permit(
      :name,
      :slogan,
      :mission_statement,
      :street,
      :zip_code,
      :city,
      :country,
      :revenue
    )
  end
end
