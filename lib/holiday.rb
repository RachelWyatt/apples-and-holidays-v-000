require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  second_supply = holiday_hash[:summer][:fourth_of_july]
  second_supply[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].to_a
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_hash|
    puts season.to_s.capitalize
    season_hash.each do |holiday, supplies|
      holiday_formatted = holiday.to_s.insert(-1, ":").tr("_", " ")
      supplies_formatted = supplies.to_s
      puts "#{holiday_formatted} #{supplies_formatted}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
