class StaticPagesController < ApplicationController
  def home
    @home ||= Home.first
  end

  def support
    @message = Message.new
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

  def search
  end

  def laboratory
    @laboratory ||= Laboratory.first
  end
end
