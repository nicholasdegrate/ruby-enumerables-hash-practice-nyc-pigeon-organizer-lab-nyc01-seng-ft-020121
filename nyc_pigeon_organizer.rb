
require 'pry'
def nyc_pigeon_organizer(data)
  list = data.each_with_object({}) do |(k, v), list|
    v.each do |inner_k, names|
      names.each do |name|
        if !list[name]
          list[name] = {}
        end
        if !list[name][k]
          list[name][k] = []
        end
        list[name][k].push(inner_k.to_s)
      end 
    end 
  end 
  list
end