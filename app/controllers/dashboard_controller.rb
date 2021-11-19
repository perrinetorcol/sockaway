class DashboardController < ApplicationController
  def profil
    @articles = current_user.articles
    authorize @articles
    # @bookings = @articles.map(&:booking).select{|boo|!boo.nil?}
  end
end
