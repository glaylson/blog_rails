class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_article, only: %i[edit update show destroy]

  def index
    @highlights = Article.desc_order.first(3)

    current_page = (params[:page] || 1).to_i 
    highlight_ids = @highlights.pluck(:id).join(',')

    @articles = Article.without_highlights(highlight_ids)
                       .desc_order                       
                       .page(current_page)
    
    # @articles = Article.order(created_at: :desc)
   #                    .where('id NOT IN (?)',highlight_ids)
   #                    .page(current_page).per(2)
  #tewste    
  end

  def show
    
  end 
 
  def new
    @article = current_user.articles.new 
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render :new
    end
  end

  def edit 
    
  end 

  def update
    
    
    if @article.update(article_params)
      redirect_to @article, notice: "Article was successfully updated."
    else
      render :edit
    end 
  end 

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, notice: "Article was successfully destroyed."
  end   

  private 
  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end 

  def set_article
    @article = Article.find(params[:id])
    authorize @article
    
  end  
  

end
