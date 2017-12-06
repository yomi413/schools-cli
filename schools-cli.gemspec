
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require "schools/version"

# Gem::Specification.new do |spec|
#   spec.name          = "schools"
#   spec.version       = Schools::VERSION
#   spec.authors       = ["yomi413"]
#   spec.email         = "yjescano@gmail.com" #["<github email address>"]

#   spec.summary       = "List of Middle Schools in Bronx, NY" #%q{TODO: Write a short summary, because RubyGems requires one.}
#   spec.description   = "Provides school listing for prospective 6th graders and their families" #%q{TODO: Write a longer description or delete this line.}
#   spec.homepage      = "TODO: Put your gem's website or public repo URL here."
#   spec.license       = "MIT"

#   # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
#   # to allow pushing to a single host or delete this section to allow pushing to any host.
#   if spec.respond_to?(:metadata)
#     spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
#   else
#     raise "RubyGems 2.0 or newer is required to protect against " \
#       "public gem pushes."
#   end

#   spec.files         = `git ls-files -z`.split("\x0").reject do |f|
#     f.match(%r{^(test|spec|features)/})
#   end
#   spec.bindir        = "exe"
#   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
#   spec.require_paths = ["lib"]

#   spec.add_development_dependency "bundler", "~> 1.16"
#   spec.add_development_dependency "rake", "~> 10.0"
#   spec.add_development_dependency "rspec", "~> 3.0"
#   spec.add_development_dependency "nokogiri", ">= 0"
#   spec.add_development_dependency "pry", ">= 0"
# end

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "schools/cli/version"

Gem::Specification.new do |spec|
  spec.name          = "schools-cli"
  spec.version       = Schools::VERSION
  spec.authors       = ["Yomaira Escano"]
  spec.email         = ["yjescano@gmail.com"]

  spec.summary       = "Middle Schools in District 8 in Bronx, NY"
  spec.description   = "Provide school listing and supplemental information for prospective 6th graders and their families"
  spec.homepage      = "https://github.com/yomi413/schools-cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = "schools" #spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
