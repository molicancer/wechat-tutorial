class Dispatcher
	def self.dispatch message_info
		return :welcome if not message_info[:event].nil? and message_info[:event] == :subscribe
		return :info if not message_info[:content].nil? and message_info[:content].include? 'info'
		return :cost if not message_info[:content].nil? and message_info[:content].include? 'cost'
		return :note if not message_info[:content].nil? and message_info[:content].include? 'note'
		return :rule if not message_info[:content].nil? and message_info[:content].include? 'rule'
		:picture_message
	end
end