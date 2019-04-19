require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name = data[season].collect do |name| name["name"] if name["status"] == "Winner" 
end
name[0].split(' ')[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.map do |key, values|
    values.find do |person| 
      if person["occupation"]== occupation
        return person["name"]
      end
    end
  end
end
  

def count_contestants_by_hometown(data, hometown)
  # code here
  people = []
  data.each do |key, values|
    values.each do |person| 
      if person["hometown"]== hometown
        people << person["name"]
      end
    end
  end
  people.length
  # binding.pry
end

def get_occupation(data, hometown)
  # code here
  data.map do |key, values|
    values.find do |person| 
      if person["hometown"]== hometown
        return person["occupation"]
      end
      # binding.pry
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].collect do |person| 
    ages << person["age"].to_i
    
  end
  avg = ages.sum / ages.length
  
end

#////////////////////////////////////////////////NOTES
# What is this error--> TypeError: no implicit conversion of String into Integer and TypeError: no implicit conversion of Symbol into #Integer. When do they arise and how to bypass