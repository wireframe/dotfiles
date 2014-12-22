load 'alfred_feedback.rb'

vpnlist = `osascript vpn_list.scpt`.lines.sort

feedback = Feedback.new
vpnlist.each do |entry|
	(name, status) = entry.chomp.split('|')
	description = "Connect to #{name}"
	icon = "connect.png"
	if status == 'true'
		description = "Disconnect from #{name}"
		icon = "disconnect.png"
	end
	feedback.add_item({:title => name, :subtitle => description, :arg => name, :icon => {:type => "default", :name => icon}})
end
puts feedback.to_xml