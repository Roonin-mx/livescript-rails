require "rails/generators/named_base"

module Ls
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_livescript
        template "javascript.js.ls", File.join('app/assets/javascripts', class_path, "#{file_name}.js.ls")
      end
    end
  end
end
