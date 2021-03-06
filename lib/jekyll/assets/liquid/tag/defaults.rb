module Jekyll
  module Assets
    module Liquid
      class Tag
        module Defaults
          require_relative "defaults/image"

          # ------------------------------------------------------------------
          # TODO: In 3.0 env needs to be enforced, right now it's not
          #   because it's maintain 2.0 API.
          # ------------------------------------------------------------------

          module_function
          def set_defaults_for!(tag, args, asset, env = nil)
            constants.select { |const| const_get(const).for?(tag) }.each do |const|
              const_get(const).new(args, asset, env).set!
            end
          end
        end
      end
    end
  end
end
