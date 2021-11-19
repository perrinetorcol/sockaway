class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @article = Article.find(params[:article_id])
    @booking.article = @article
    @booking.save
    redirect_to article_path(@article)
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end
end
