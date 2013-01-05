namespace :db do
  namespace :seed do

    # 
    # Seed initial data for Carinthia
    #
    desc "Election Counter | seed data for carinthia"
    task :carinthia => :environment do
      load(File.join(Rails.root, "db", "seed_data_at_ktn.rb"))
    end

    #
    # Seed initla data for lower austria
    #
    desc "Election Counter | seed data for lower austira"
    task :lower_austria => :environment do
      load(File.join(Rails.root, "db", "seed_data_at_noe.rb"))
    end

  end
end
