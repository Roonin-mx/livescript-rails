require 'rails/engine'

module LiveScript
  module Rails
    class Engine < ::Rails::Engine
      config.app_generators.javascript_engine :ls
      initializer :register_livescript do |app|
        app.assets.register_engine '.ls', TiltTemplate
        app.assets.register_engine '.livescript', TiltTemplate
      end
    end
  end
end
