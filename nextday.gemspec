# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nextday/version"

Gem::Specification.new do |s|
  s.name        = "nextday"
  s.version     = Nextday::VERSION
  s.authors     = ["Robert Williams"]
  s.email       = ["rob@r-williams.com"]
  s.homepage    = "https://github.com/robwilliams/nextday"
  s.summary     = %q{Finds the Next Working Day even if holidays are in the way.}
  s.description = %q{
    Finds the Next Working Day even if holidays are in the way.
    Extends Date with a .next_working_day instance method.
  }

  s.rubyforge_project = "nextday"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency('rspec', '~> 2.10.0')
  s.add_development_dependency('yard')
  s.add_development_dependency('rake')
  s.add_development_dependency('rack-test')
  s.add_runtime_dependency "json"
  s.add_runtime_dependency "rack"
end
