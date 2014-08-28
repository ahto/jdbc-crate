warn "jdbc-crate is only for use with JRuby" if (JRUBY_VERSION.nil? rescue true)
require 'jdbc/crate/version'

module Jdbc
  module Crate

    def self.driver_jar
      "crate-jdbc-standalone-#{DRIVER_VERSION}.jar"
    end

    def self.load_driver(method = :load)
      send method, driver_jar
    end

    def self.driver_name
      'io.crate.client.jdbc.CrateDriver'
    end

    module Driver
      include_package "io.crate.client.jdbc"
      import "io.crate.client.jdbc"
    end

    #TODO: where is this needed
    # if defined?(JRUBY_VERSION) && # enable backwards-compat behavior :
    #     ( Java::JavaLang::Boolean.get_boolean("jdbc.driver.autoload") ||
    #         Java::JavaLang::Boolean.get_boolean("jdbc.crate.autoload") )
    #   warn "autoloading JDBC driver on require 'jdbc/crate'" if $VERBOSE
    #   load_driver :require
    # end
  end
end
