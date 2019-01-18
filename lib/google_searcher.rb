require 'watir'
require 'launchy'
class New_project
	def check_if_user_gave_input
  		abort("mkdir: missing input") if ARGV.empty?
	end


	def get_folder_name
		folder_name = []
  		return folder_name << ARGV
	end

	def google_search(name)
		browser = Watir::Browser.new(:firefox)
		browser.goto 'google.com'
		search_bar = browser.text_field(class: 'gsfi')
		search_bar.set(ARGV)
		search_bar.send_keys(:enter)
	end
end
var = New_project.new
var.check_if_user_gave_input
var.get_folder_name
var.google_search(ARGV)
