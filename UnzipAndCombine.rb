# author: @adi

require 'zip/zipfilesystem'
require 'FileUtils'

puts "What Directory do you want as the root ? "
dir_of_zips = gets.chomp
Dir.chdir(dir_of_zips)
dir_of_zips = gets.chomp.gsub('\\','/')
ZipList = Dir.glob('*.zip')
ZipList.each do |eachzip|
	puts "The current zip is : " + eachzip
	Zip::ZipFile.open(eachzip) do |zipfile|
		zipfile.each do |file|
			puts file.to_s
		#	puts dir_of_zips + '/' + file.to_s
		#	file.extract(file) unless File.exist?(dir_of_zips + file.to_s)
		end
	end
end

