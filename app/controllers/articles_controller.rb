class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.create
  end

  def create
    @article = Article.new(params_require)
    @article.save
    redirect_to article_path(@article)
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params_require)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def params_require
    params.require(:article).permit(:title, :content)
  end

end
