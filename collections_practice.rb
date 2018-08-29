# your code goes here
def begins_with_r (arr)
  arr.each do |e|
    unless e[0] == 'r'
      return false
    end
  end
  true
end

def find_cool(arr_obj)
  arr_obj.select do |obj|
    obj[:temperature] == "cool"
  end
end

def organize_schools (obj_of_objs)
  new_obj = {
    "NYC" => [],
    "SF" => [],
    "Chicago" => []
  }
  obj_of_objs.each do |school_name, location|
    location.each do |each_location, city_name|
      new_obj[city_name].push(school_name)
    end
  end
  new_obj
end

# {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#  "SF"=>["dev boot camp", "Hack Reactor"],
#  "Chicago"=>["dev boot camp chicago"]}
#
#  {
#    "flatiron school bk" => {
#      :location => "NYC"
#    },
#    "flatiron school" => {
#      :location => "NYC"
#    },
#    "dev boot camp" => {
#      :location => "SF"
#    },
#    "dev boot camp chicago" => {
#      :location => "Chicago"
#    },
#    "general assembly" => {
#      :location => "NYC"
#    },
#    "Hack Reactor" => {
#      :location => "SF"
#    }

def contain_a(arr)
  arr.select do |e|
    e.include?("a")
  end
end

def first_wa(arr)
  arr.find do |e|
    "#{e[0]}#{e[1]}" == "wa"
  end
end

def remove_non_strings (arr)
  arr.select do |e|
    e.class == String
  end
end

def count_elements (arr)
  arr.uniq.each do |e|
    e[:count] = arr.count(e)
  end
end

def merge_data(key,data)
  arr=[]
  key.each do |obj|
    first_name = obj[:first_name]
    arr.push(obj.merge(data[0][first_name]))
  end
  arr
end
