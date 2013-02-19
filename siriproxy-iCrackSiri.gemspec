# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-iCrackSiri"
  s.version     = "0.10.7"
  s.authors     = ["Jeffro Gomez"]
  s.email       = ["Support@iCrackSiri.com"]
  s.homepage    = "iCrackSiri.com"
  s.summary     = %q{This is a Plugin for my Siri Proxy}
  s.description = %q{Siri Proxy Plugin }

  s.rubyforge_project = "siriproxy-iCrackSiri"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
