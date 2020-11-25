class StaticPagesController < ApplicationController
  def home
    render html: "hello,world"
  end

  def help
    render html: "hello,world"
  end
end
