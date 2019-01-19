require 'launchy'
class Start_app

	def check_if_user_gave_input
	  abort("search: missing input") if ARGV.empty?
	end

	def get_folder_name
	  search = ARGV.join('+')
	  Launchy.open("https://www.google.com/search?q=#{search}")
	end
end

start = Start_app.new
start.check_if_user_gave_input
start.get_folder_name