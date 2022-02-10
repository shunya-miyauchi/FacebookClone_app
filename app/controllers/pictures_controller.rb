class PicturesController < ApplicationController
  before_action :picture_find,only: [:show,:destroy,:edit,:update]

  # 一覧表示
  def index
    @pictures = Picture.all
  end

  # 新規投稿
  def new
    @picture = Picture.new
  end

  def create
    @picture = current_user.pictures.build(picture_params)  
    if params[:back]
      render :new
    else
      if @picture.save
        flash[:danger] = "投稿しました"
        redirect_to pictures_path
      else
        flash[:danger] = "投稿できません"
        render :new
      end
    end
  end

  # 確認
  def confirm
    @picture = current_user.pictures.build(picture_params)
    render :new if @picture.invalid?
  end

  # 参照
  def show
  end

  # 編集
  def edit

  end

  def update
    if @picture.update(picture_params)
      flash[:danger] = "編集しました"
      redirect_to pictures_path
    else
      render :edit
    end
  end

  # 削除
  def destroy
    @picture.destroy
    redirect_to pictures_path
  end

  private

  def picture_params
    params.require(:picture).permit(:content,:image,:image_cache)
  end

  def picture_find
    @picture = Picture.find(params[:id])
  end


end
