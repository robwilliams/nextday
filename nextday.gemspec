# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nextday/version"

Gem::Specification.new do |s|
  s.name        = "nextday"
  s.version     = Nextday::VERSION
  s.authors     = ["Robert Williams"]
  s.email       = ["rob@r-williams.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{
    
  }

  s.rubyforge_project = "nextday"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency('rspec', '~> 2.6.0')
  # s.add_runtime_dependency "rest-client"
end
