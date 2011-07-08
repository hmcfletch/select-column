# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "select-column/version"

Gem::Specification.new do |s|
  s.name        = "select-column"
  s.version     = Select::Column::VERSION
  s.authors     = ["Les Fletcher"]
  s.email       = ["les.fletcher@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Select a single column from a table by passing ActiveRecord object creation.}
  s.description = %q{Select a single column from a table by passing ActiveRecord object creation.}

  s.rubyforge_project = "select-column"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('activerecord', '~> 3.0')
end
