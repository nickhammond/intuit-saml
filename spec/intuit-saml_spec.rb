require File.dirname(__FILE__)+'/../lib/intuit-saml'

describe Intuit::Saml do
  
  before do
    @testdir = File.dirname(__FILE__)
  end
  
  describe "Parsing SAML response" do
    before do
      @saml = Intuit::Saml.new(
        :saml_xml => Base64.decode64( File.read("#{@testdir}/data/test-samlresponse.txt") ),
        :private_key => File.read( "#{@testdir}/data/test-private.key" )
      )
      # To debug the decrypted SAML reponse
      # puts @saml.inspect
    end
    
    it "should have a ticket" do
      @saml.ticket.should == "5_bfexnbyt5_bw8m98_b_b4wked5drx52bxd6wp65nca2dreu_zxvftx8sde2tmswagyy8sccak8dp9y7p4d7d85xpwgq3g4unkc6b"
    end
    
    it "should have a destination URL" do
      @saml.application_destination_url.should == "http://ids.whazzing.com/account"
    end
  
    it "should have a auth_id(known as an auth_id_pseudonym)" do
      @saml.auth_id.should == "fb55d948-acbf-4960-9fb6-15b3647c7f5d"
    end
    
    it "should have a realm_id(known as a realm_id_pseudonym)" do
      @saml.realm_id.should == "2bab4bdf-4015-4311-9ddc-32147f0177a3"
    end
    
    it "should have a provider_id(known by Intuit as 'Federated Service Provider ID')" do
      @saml.provider_id.should == "zm.app.prod-intuit.ipp.prod"
    end
    
    it "should have a signature value" do
      @saml.signature.should == "FWcsIWdjAbKiKzSh2qLPAwK/rws="
    end  
  end
  
  
end