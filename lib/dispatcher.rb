class Dispatcher
	def self.dispatch message_info
		return :welcome if not message_info[:event].nil? and message_info[:event] == :subscribe
		return :info if not message_info[:content].nil? and message_info[:content].include? '1'
		return :cost if not message_info[:content].nil? and message_info[:content].include? '2'
		return :note if not message_info[:content].nil? and message_info[:content].include? '3'
		return :rule if not message_info[:content].nil? and message_info[:content].include? '4'
		:picture_message
	end
end