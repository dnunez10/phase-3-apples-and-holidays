require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_supplies looks like this:
  # holiday_supplies = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_supplies is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas][2] = supply
  holiday_supplies[:winter][:new_years][1] = supply
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_supplies is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated suholiday_supplies
  holiday_supplies.each do |seasons, holidays|
    if seasons == season
      holiday_supplies[seasons][holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_supplies[:winter].each do |holidays, supplies|
    holiday_supplies[:winter][holidays] = [supplies].each do |item|
      winter_supplies << item
      winter_supplies.flatten!.uniq!
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_supplies and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  temp = []
  holiday_supplies.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
    holiday_supplies[seasons].each do |holidays, supplies|
      temp = holidays.to_s.split("_")
      temp.collect! {|item| item.capitalize!}
      puts "  #{temp.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_supplies.each do |seasons, holidays|
    holiday_supplies[seasons].each do |holidays, supplies|
      holiday_supplies[seasons][holidays].each do |supplies|
        if supplies == "BBQ"
          bbq_holidays << holidays
        end
      end
    end
  end
  bbq_holidays
end







