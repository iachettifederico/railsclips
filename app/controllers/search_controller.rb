class SearchController < ApplicationController
  def search
    q = search_params[:q]
    @search = nil
    @results = [ q, User.first, Post.first]
  end

  private

  def search_params
    params[:search_form] || {}
  end
end
