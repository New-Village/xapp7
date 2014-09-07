class MainsController < ApplicationController
  before_filter :authenticate_user!  #ログインしているかどうか確認
  before_action :set_main, only: [:show, :update]
  
  # GET /mains
  # GET /mains.json
  def index
    @mains = Main.own(current_user.id).unread  # 未読フィード取得
  end

  # フィードのURLに遷移
  def show
    redirect_to @main.feed.url
  end

  # 既読フラグを更新
  def update
    @main.update_attribute(:read_flg,"t")
  end
  
  # 現在、開発向けに実装。サイト登録とサイトリストの取得
  def menu
    @regSite = Site.new # TEMP Site Registration
    @sList = Sbsc.own(current_user.id) # Site List 購読中のサイト一覧
  end
 
  private
    # パラメータを取得してインスタンス変数（@main）を作成
    def set_main
      @main = Main.find_by(:id => params[:format])
    end
  
end