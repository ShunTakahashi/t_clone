class TwtsController < ApplicationController
before_action:set_twt,only:[:show,:edit,:update,:destroy]

  def index
    @twts=Twt.all
  end

  def new
    if params[:back]
      @twt = Twt.new(twt_params)
    else
      @twt = Twt.new
    end
  end

  def show
  end

  def create
    @twt = Twt.new(twt_params)
    if @twt.save
      redirect_to twts_path,notice:"Tweetが投稿されました。"
    else
      render 'new'
    end
  end

  def update
    if @twt.update(twt_params)
      redirect_to twts_path,notice: "Tweetを編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @twt.destroy
    redirect_to twts_path,notice: "Tweetを削除しました!"
  end

  def confirm
    @twt = Twt.new(twt_params)
    render :new if @twt.invalid?
  end

  private

  def twt_params
    params.require(:twt).permit(:content)
  end

  def set_twt
    @twt = Twt.find(params[:id])
  end
end
