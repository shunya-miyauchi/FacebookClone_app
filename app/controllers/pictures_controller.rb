class PicturesController < ApplicationController

  # 一覧表示
  def index

  end

  # 新規投稿
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to 
    else
      flash[:danger] = "投稿できません"
      render :new
    end
  end

  # 参照
  def show

  end

  # 編集
  def edit

  end

  def update

  end

  # 削除
  def destroy

  end

  private

  def picture_params
    params.require(:picture).permit(:content)
  end

end
