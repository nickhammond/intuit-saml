require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('intuit-saml', '0.1.0') do |p|
  p.description     = "Allow sites federated with Intuit to process SAML auth requests"
  p.url             = "https://code.intuit.com/sf/wiki/do/viewPage/projects.ipp_fed_auth/wiki/RubySAMLGateway"
  p.author          = "Zachery Moneypenny, Nathan Smith"
  p.email           = "zachery_moneypenny@intuit.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each {|ext| load ext}