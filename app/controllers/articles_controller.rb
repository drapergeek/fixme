class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @new_article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:name)
  end
end
