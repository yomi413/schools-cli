lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "schools/version"

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
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #   f.match(%r{^(test|spec|features)/})
  # end
  # spec.bindir        = "exe"
  # spec.executables   = "schools" #spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri", ">= 1.10.8"
  spec.add_development_dependency "pry"
end
