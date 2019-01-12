# FIXME ここに書くべきではない
Program.delete_all if Program.exists?
Gymnasium.delete_all if Gymnasium.exists?
30.times do |n|
  Gymnasium.create!(name:       "体育館名#{n}",
                    zip_code:   "0000000",
                    prefecture: (0..46).to_a.sample,
                    city:       "市町村区#{n}",
                    street:     "番地#{n}",
                    tell:       "0000000000",
                    url:        "https://example.com/",
                    access:     "JR田町駅から徒歩7分",
                    court:      "10面",
                    note:       "ここに備考を記入してください。")
end

Gymnasium.all.each do |gymnasium|
  (1..3).to_a.sample.times do
    gymnasium.programs.build(day:        (0..6).to_a.sample,
                             start_time: '18:00',
                             end_time:   '21:00').save!
  end
end
