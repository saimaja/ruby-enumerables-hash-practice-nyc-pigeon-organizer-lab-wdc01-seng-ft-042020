def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |color_gender_lives, attributes|
    attributes.each do |values, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][color_gender_lives] ||= []
        pigeon_list[name][color_gender_lives].push(values.to_s)
      end
    end 
  end
  pigeon_list
end