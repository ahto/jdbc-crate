# -*- encoding: utf-8 -*-
$LOAD_PATH << File.expand_path('../lib', __FILE__)
require 'jdbc/crate/version'

Gem::Specification.new do |gem|
  gem.name = %q{jdbc-crate}
  gem.version = Jdbc::Crate::VERSION

  gem.authors = ['Ahto Jussila']
  gem.email = ['ahto@jussila.org']
  gem.homepage = 'http://github.com/ahto/jdbc-crate'
  gem.licenses = ['Apache-2']
  gem.platform = 'java'

  gem.files = [ 'README.md', 'LICENSE.txt', *Dir['lib/**/*'].to_a ]

  gem.rdoc_options = ["--main", "README.md"]
  gem.require_paths = ["lib"]

  gem.summary = %q{Crate jdbc for JRuby.}
  gem.description = %q{Install this gem `require 'jdbc/crate'` and invoke `Jdbc::Crate.load_driver` within JRuby to load the driver.}
end
