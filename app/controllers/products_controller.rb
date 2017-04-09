class ProductsController < ApplicationController
  def index
    @products = Product.main
    @coupons = Product.coupons
  end
  
  def set_active_coupone
    coupon = Product.find_by(id: params[:coupon])
    coupon.update_attributes(status: 'active') if coupon.present?
    redirect_to main_app.root_path
  end
end
