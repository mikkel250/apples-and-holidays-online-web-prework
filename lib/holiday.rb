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
#	temp = [] 		# reset the array at the beginning of each round of iteration
#    temp << season.to_s.capitalize     #push in the season, properly formatted. ---OR just print it out at this point
  print "#{season.to_s.capitalize}:\n"
    holiday.each do |holiday, supplies|
      h_arr = []  # reset the array for each iteration
      h_arr = holiday.to_s.split("_") 		# splits the holidays into separate words. This was not working because of the join call
#      puts h_arr
      #then run the capitalizer and push it back into the temp arr. This is only capitalizing the first word still. It may be easiest to just run this on the final temp aray rather than trying to run it on just this one part
      	#Capitalizer
      	 h_arr.each do |i|		        
		       i.capitalize!
			   end # capitalizer
#			temp << h_arr.join(" ")  # push capitalized and split holidays into final arr. 
	print "   #{h_arr.join(" ")}: "				
			# ----OR just print it out, then print out the supplies!
      
 
#      supplies_arr << supplies
  print "#{supplies.join(", ")}\n"    
    end #2nd lvl (holidays, supp)
    #then iterate over the entire arr and print?
#  temp.each {|x| puts x}
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







