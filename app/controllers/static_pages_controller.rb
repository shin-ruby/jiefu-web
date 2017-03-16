class StaticPagesController < ApplicationController
  def home
    @home = Home.first
  end

  def support
  end

  def product
  end

  def product_detail
  end

  def news
  end

  def news_content
  end

  def about
    @about = About.first
  end

  def about_introduction
    @about = About.first
  end

  def about_honors
  end

  def careers 
  end

  def careers_detail
  end
end
