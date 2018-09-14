require 'pry'

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
    if season == :winter
    holiday.each do |holiday, supplies|
    supplies << supply 
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    
    holiday.each do |holiday, supplies|
      if holiday == :memorial_day
    supplies << supply 
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_arr = []
  holiday_hash[:winter].each do |holiday, arr|
    new_arr << arr
  end
  new_arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  
  # Or create different named arrays for each one and then print them out in a template?
  # Or create a hash for each season that can then be iterated over in order?
  seasons = []
  holidays = []
  supplies_arr = [] 

holiday_hash.each do |season, holiday|
  seasons << season.to_s.capitalize
  binding.pry
    holiday.each do |holiday, supplies|
      holidays << holiday.to_s.split("_").join(" ")
      supplies_arr << supplies
      binding.pry
    end
  end

   def capitalizer(holidays)
     h_split = holidays.map {|x| x.split(" ")} # split into separate arrays.
        # iterate over each array within that array, capitalize them
      h_split.each do |i|
        i.each do |x|
          x.capitalize!
        end
    end
  end
  
  # the final step is going to be to group each holiday together and then iterate over each of those arrays and plug into the template to print it.
  # this may be best accomplished in the intial step above while going over the hash initially, then using the capitalizer, then pushing each item into a final hash
  # maybe use a counter while iterating over the various hashes? Then increment the array it goes into?
  
  holidays_capitalized = capitalizer(holidays)
  puts seasons
  puts supplies_arr
  
  
  
  
=begin
  holiday_hash.each do |season, holiday|
    season.transform_values.with_index { |x, y| print "#{x.to_s.capitalize}:\n  #{y.to_s}: "}
      holiday.each do |day, arr|
        print "#{day.to_s.capitalize}: "
        arr.each do |arr|
          
          print "#{arr}, "
        end
      end
    end
=end
end

all_supplies_in_holidays(holiday_hash)



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  all_holidays_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      all_holidays_with_bbq << holiday if supplies.include?("BBQ")
    end
  end
  all_holidays_with_bbq
end







