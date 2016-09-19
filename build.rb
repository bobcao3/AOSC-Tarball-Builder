#!/bin/ruby

require './target.rb'

# ===========================
# Global Builder construct
# ===========================
class Builder
	attr_accessor :time	# Global Timer Abstract
	attr_accessor :target	# Build Target

	def initialize
		self.time = Time.new
		self.target = LocalTarget.new
	end
end

# ===========================
# Manual Setup, 
#   Where human setups
# ===========================
def manual_setup
	puts "Which target do you want to build?"
	puts "It should be in ./target/xxx.target :"
	tar_file = gets
	tar_file = "./targets/" + tar_file
	puts "Loading : " + tar_file
	require tar_file

	$build = Builder.new

end

# ===========================
# MAIN, 
#   Where everything starts
# ===========================
puts "AOSC Tarball Builder | unknown git"

manual_setup

puts $build.target
