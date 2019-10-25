
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "frameh_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "frameh_view_tool"
  spec.version       = FramehViewTool::VERSION
  spec.authors       = ["Hugo Morais"]
  spec.email         = ["hugomorais@gmail.com"]

  spec.summary       = %q{Specific view and methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails app.}
  spec.homepage      = "http://scm.ywesee.com/?p=spreadsheet/.git;a=summary"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
