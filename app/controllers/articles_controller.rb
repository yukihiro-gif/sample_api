class ArticlesController < ApplicationController
  def new
    @articles = Article.all
    @article = Article.new
  end

  def create
    @articles = Article.all
    @article = Article.new(params_article)
    tag_list = params[:article][:tag_ids]
    

    if @article.save
       @article.save_tags(tag_list)
       redirect_to new_article_path(@articles), notice: "記事の投稿に成功しました。"
    else
       render :new
    end
  end

private
 def params_article
   params.require(:article).permit(:name, :text)
 end

end
