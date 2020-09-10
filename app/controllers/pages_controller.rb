class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @skip_navbar = true
    @reviews = Review.all

  end

  def contact_us
  end

  def faq
  end

  def about_us
  end
end
