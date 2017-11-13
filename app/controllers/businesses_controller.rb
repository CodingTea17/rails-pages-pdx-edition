class BusinessesController < ApplicationController
  def new
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new
  end

  def create
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new(business_params)
    if @type.save
      flash[:notice] = "List successfully added!"
      redirect_to type_path(@business.type)
    else
      render :new
    end
  end

  def edit
    @type = Type.find(params[:type_id])
    @business = Business.find(params[:id])
    render :edit
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      redirect_to type_path(@business.type)
    else
      @type = Type.find(params[:type_id])
      render :edit
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to type_path(@business.type)
  end

private
  def business_params
    params.require(:business).permit(:name,:telenum,:street,:city,:state,:zip,:email,:website)
  end
end
