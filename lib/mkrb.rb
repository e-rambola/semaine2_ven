class Start_app

	def check_if_user_gave_input
	  abort("mkdir: missing input") if ARGV.empty?
	end

	def get_folder_name
	  return folder_name = ARGV.first
	end

	def create_folder(name)
	  Dir.mkdir(name)
	end
end

start = Start_app.new
start.check_if_user_gave_input
start.get_folder_name
start.create_folder(ARGV.first)