# frozen_string_literal: true

# app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  include Paginable

  def index
    paginated = paginate(Article.recent)
    render_collection(paginated)
  end

  def serializer
    ArticleSerializer
  end
end
