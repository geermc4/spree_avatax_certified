

module SpreeAvatax
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_avatax'

    config.autoload_paths += %W(#{config.root}/lib)

    paths["app/models"] << "lib/models/spree/avalara"

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree_avatax.preferences", before: :load_config_initializers do | app |
    Spree::Avalara::Config = Spree::Avalara::Settings.new
  end

  def self.activate
    puts "Activating"
    Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
      Rails.configuration.cache_classes ? require(c) : load(c)
    end
    Dir.glob(File.join(File.dirname(__FILE__), "../../app/models/spree/avalara/*.rb")) do |c|
      Rails.env.production? ? require(c) : load(c)
    end

  end

  config.to_prepare &method(:activate).to_proc
end
end
