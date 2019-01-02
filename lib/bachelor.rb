require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  contestants = data[season]
  contestants.each do |attribute|
    if attribute["status"] == "Winner"
      return attribute["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, results|
    results.each do |attribute|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = []
  data.each do |season, results|
    results.each do |attribute|
      if attribute["hometown"] == hometown
         hometown_count << attribute["hometown"]
      end
    end
  end
  return hometown_count.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, results|
    results.each do |attribute|
      if attribute["hometown"] == hometown
         return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  counter = 0
  contestants = data[season]
  contestants.each do |results|
  total_age += results["age"].to_i
  counter += 1
end
return (total_age / counter.to_f).round
end
