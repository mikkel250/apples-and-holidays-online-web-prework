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
  
  
  
holiday_hash.each do |season, holiday|

  print "#{season.to_s.capitalize}:\n"
    holiday.each do |holiday, supplies|
      h_arr = []  # reset the array for each iteration
      h_arr = holiday.to_s.split("_") 		# splits the holidays into separate words. This was not working because of the join call

      		#Capitalizer
      	 h_arr.each do |i|		        
		       i.capitalize!
			   end # capitalizer

	print "   #{h_arr.join(" ")}: "				

  print "#{supplies.join(", ")}\n"    
    end #2nd lvl (holidays, supp)

  end #1st lvl (seasons)






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







