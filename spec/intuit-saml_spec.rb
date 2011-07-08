require File.dirname(__FILE__)+'/../lib/intuit-saml'

describe Intuit::Saml do
  
  before do
    @testdir = File.dirname(__FILE__)
  end

  it "should correctly decrypt the ticket and destination url from the SAML response" do
    saml = Intuit::Saml.new(
      :saml_xml => Base64.decode64( File.read("#{@testdir}/data/test-samlresponse.txt") ),
      :private_key => File.read( "#{@testdir}/data/test-private.key" )
    )
    saml.ticket.should == "5_bfexnbyt5_bw8m98_b_b4wked5drx52bxd6wp65nca2dreu_zxvftx8sde2tmswagyy8sccak8dp9y7p4d7d85xpwgq3g4unkc6b"
    saml.application_destination_url.should == "http://ids.whazzing.com/account"
  end
  
end