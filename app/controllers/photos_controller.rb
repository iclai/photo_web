class PhotosController < ApplicationController
  before_action :set_photo, :only => [:show, :edit, :update, :destroy] #用回呼應的方法 告訴Rails執行任何動作前先執行set_photo

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
     if @photo.save
      redirect_to photos_url #這是一個「重新導向」(Redirect) 的過程
    else
      render :action => :new #render 會保留使用者原本輸入的資料
    end
  end

  def show    
  end

  def edit    
  end

  def update    
    if @photo.update_attributes(photo_params)
       redirect_to photo_path(@photo)
    else
      render :action => :edit
    end
  end

  def destroy        
    @photo.destroy    
    redirect_to photos_url
  end

#自行定義私有方法
  private  

  def set_photo
    @photo = Photo.find(params[:id]) #因為Photo.find重複很多次，所以讓她簡化，定義一次重覆使用，讓程式碼更為簡潔。

  end

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)

  end

end
