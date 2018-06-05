namespace :import_data do

  require 'csv'

  desc "Import data from CSV file"
  task dataCoins: :environment do
    CSV.foreach( 'db/inventory.csv',:encoding => 'windows-1251:utf-8', headers: true ) do |row|
      Coin.create(row.to_h)
    end
  end
end
