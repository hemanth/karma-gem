Gem::Specification.new do |s|
  s.name               = "karma"
  s.version            = "0.0.1"
  s.default_executable = "karma"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hemanth.HM"]
  s.date = %q{2012-05-20}
  s.description = %q{A simple karma gem}
  s.email = %q{hemanth.hm@gmail.com}
  s.files = ["Rakefile", "lib/karma.rb", "bin/karma"]
  s.test_files = Dir.glob('test/*.rb')
  s.homepage = %q{http://rubygems.org/gems/karma}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Karma!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

