# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{intuit-saml}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Zachery Moneypenny, Nathan Smith"]
  s.date = %q{2010-06-11}
  s.description = %q{Allow sites federated with Intuit to process SAML auth requests}
  s.email = %q{zachery_moneypenny@intuit.com}
  s.extra_rdoc_files = ["LICENSE", "README.rdoc", "lib/intuit-saml.rb"]
  s.files = ["LICENSE", "Manifest", "README.rdoc", "Rakefile", "intuit-saml.gemspec", "lib/intuit-saml.rb", "spec/data/test-private.key", "spec/data/test-samlresponse.txt", "spec/intuit-saml_spec.rb"]
  s.homepage = %q{https://code.intuit.com/sf/wiki/do/viewPage/projects.ipp_fed_auth/wiki/RubySAMLGateway}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Intuit-saml", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{intuit-saml}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Allow sites federated with Intuit to process SAML auth requests}
  s.add_dependency("libxml-ruby")

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
