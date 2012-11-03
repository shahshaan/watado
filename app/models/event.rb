class Event < ActiveRecord::Base
  attr_accessible :category, :date, :end_time, :image, :length, :location, :name, :start_time, :url, :venue

require 'open-uri'

#   def self.update_groupon_events
#   	require 'open-uri'
# 	require 'json'
  	
#   	events = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=4d623ab44297d07ff9f6006a4239d51ae7a6e9ce").read)

#   	raise events.to_json

#   	events.each do |event|
#   		unless exists? :url => event.
#   	end
#   end

# def self.add_entries(entries)
#   entries.each do |entry|
#     unless exists? :guid => entry.id
#       create!(
#         :name         => entry.title,
#         :summary      => entry.summary,
#         :url          => entry.url,
#         :published_at => entry.published,
#         :guid         => entry.id
#       )
#     end

# end

	def self.update_groupon_events
		events = JSON.parse(open("http://api.groupon.com/v2/deals/?client_id=4d623ab44297d07ff9f6006a4239d51ae7a6e9ce").read)

		raise events["deals"][0]["division"].to_yaml
	end

end