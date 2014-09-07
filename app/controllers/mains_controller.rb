class MainsController < ApplicationController
  before_action :set_main, only: [:show, :update]
  
  # GET /mains
  # GET /mains.json
  def index
    @mains = Main.unread  # 未読フィード取得
  end

  # 既読フラグを更新して、フィードに遷移
  def show
    update
    redirect_to @main.feed.url
  end

  # 既読フラグを更新
  def update
    @main.update_attribute(:read_flg,"t")
  end
  
  def menu
    @regSite = Site.new # TEMP Site Registration
    @sList = Sbsc.all # Site List 購読中のサイト一覧
  end
 
  private
    # パラメータを取得してインスタンス変数（@main）を作成
    def set_main
      @main = Main.find_by(:feed_id => params[:format])
    end
  
end