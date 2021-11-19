class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @article = Article.find(params[:article_id])
    @booking.article = @article
    @booking.user = current_user
    @booking.save
    authorize @booking
    redirect_to dashboard_path
  end
end
