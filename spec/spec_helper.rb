require_relative '../lib/fcc'
 
#dependencies
#require 'minitest/spec'
#require 'webmock/minitest'
require 'vcr'
#require 'turn'
 
#Turn.config do |c|
# c.format  = :outline
# c.trace   = true
# c.natural = true
#end
 
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/fcc_cassettes'
#  c.hook_into :webmock
end
