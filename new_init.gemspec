# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_init/version'

Gem::Specification.new do |spec|
  spec.name          = "new_init"
  spec.version       = NewInit::VERSION
  spec.authors       = ["a7madx7"]
  spec.email         = ["ahmad.hamdi.emara@gmail.com"]

  spec.summary       = %q{Introducing the init method as a constructor in ruby instead of built-in initialize also introducing C#, and Java like constructors which carry the same name as your class name.}
  spec.description   = %q{Welcome to init gem! This gem is a MonkeyPatching gem that provides you with the more friendly constructor 'init' inside your code which acts exactly the same as the original built in ruby 'initialize', it also gives you the ability to name your constructor by the same name as your class following C#, Java and other C-Like languages syntax.}
  spec.homepage      = "http://github.com/a7madx7/new_init"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
