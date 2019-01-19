class Automatik
	def check_if_user_gave_input
	  abort("Donner le nom de votre dossier et en un seul mot!!!") if ARGV.length != 1
	end
	def create
		folder = ARGV.join(' ')
		Dir.mkdir("#{folder}")
		file = File.open("Gemfile", "a")
		file.puts("source 'https://rubygems.org'")
		file.puts("gem 'pry'")
		file.puts("gem 'rubocop'")
		file.puts("gem 'watir'")
		file.puts("gem 'launchy'")
		file.close
		system("bundle install")
		system("git init")
		File.open(".env", "w")
		file_ = File.open(".gitignore", "a")
		file_.puts(".env")
		file_.close
		Dir.mkdir("lib")
		system("rspec --init")
		file_r = File.open("README.md","a")
		file_r.puts("c'est un programme Ruby")
		file_r.close

	end
end
start = Automatik.new
start.check_if_user_gave_input
start.create