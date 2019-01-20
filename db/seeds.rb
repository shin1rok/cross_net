require 'csv'

Gymnasium.destroy_all if Gymnasium.exists?
Prefecture.destroy_all if Prefecture.exists?
prefectures_table = CSV.table('db/csv/prefectures.csv')
prefectures_table.each do |row|
  Prefecture.create!(id:   row[:code],
                     name: row[:name])
end

# FIXME ここに書くべきではない
30.times do |n|
  Gymnasium.create!(name:          "体育館名#{n}",
                    zip_code:      "0000000",
                    prefecture_id: (1..47).to_a.sample,
                    city:          "市町村区#{n}",
                    street:        "番地#{n}",
                    tell:          "0000000000",
                    url:           "https://example.com/",
                    access:        "JR田町駅から徒歩7分",
                    court:         "10面",
                    note:          "ここに備考を記入してください。")
end

Gymnasium.all.each do |gymnasium|
  (1..3).to_a.sample.times do
    gymnasium.programs.create!(day:        (0..6).to_a.sample,
                               start_time: '18:00',
                               end_time:   '21:00')
  end
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?