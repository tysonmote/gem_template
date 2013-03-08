# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mygem/version"

Gem::Specification.new do |s|
  s.name        = "mygem"
  s.version     = MyGem::VERSION
  s.authors     = ["Tyson Tate"]
  s.email       = ["tyson@tysontate.com"]
  s.homepage    = "http://github.com/tysontate/mygem"
  s.summary     = "TODO"
  s.description = "TODO"

  s.rubyforge_project = "mygem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rb-fsevent", "~> 0.9.0"
  s.add_development_dependency "guard", "~> 1.6.0"
  s.add_development_dependency "guard-minitest", "~> 0.5.0"
  s.add_development_dependency "awesome_print", "~> 1.1.0"
  s.add_development_dependency "pry", "~> 0.9.0"
  # s.add_runtime_dependency "foo"
end
