namespace :db do
  desc "アプリに必要なサンプルデータを作成します"
  task sample: :environment do

    # マスタ - 収集サイト一覧
    50.times do |n|
      title = Faker::Internet.domain_word
      url = Faker::Internet.url
      dttm = DateTime.new(rand(2013..2014), rand(1..12), rand(1..28), rand(0..23), rand(0..59), rand(0..59))
      Site.create!(title: title,
        st_url: url,
        rs_url: url)
    end    

    # マスタ - 収集記事一覧
    500.times do |n|
      title = Faker::Lorem.sentence
      url = Faker::Internet.url
      smry = Faker::Lorem.paragraph(5)
      dttm = DateTime.new(rand(2013..2014), rand(1..12), rand(1..28), rand(0..23), rand(0..59), rand(0..59))
      site_id = rand(1..50)  # サイト数に応じて上限値を変更すること
      Feed.create!(title: title,
        url: url,
        smry: smry,
        publish_at: dttm,
        site_id: site_id)
    end

    # サンプルフィード一覧作成
    Feed.find_each do |feed|
      Main.create(user_id: 1,
        feed_id: feed.id,
        read_flg: "f",
        created_at: feed.publish_at)
    end

    # サンプルサブスクライブ作成
    Site.find_each do |site|
      Sbsc.create(user_id: 1,
        site_id: site.id
        )
    end

  end
end