
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "harry_potter_books/version"

Gem::Specification.new do |spec|
  spec.name          = "harry_potter_books"
  spec.version       = HarryPotterBooks::VERSION
  spec.authors       = ["Angie Kassab"]
  spec.email         = ["anasab12@gmail.com"]

  spec.summary       = "This gem lists each book of the Harry Potter series."
  spec.description   = "This gem gives a summary, Goodreads rating, and a quote
                        from each of the Harry Potter books written by J.K Rowling."
  spec.homepage      = "https://github.com/AngieAngelica/harry_potter_books"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "word_wrap"

  spec.add_dependency "nokogiri"
end
