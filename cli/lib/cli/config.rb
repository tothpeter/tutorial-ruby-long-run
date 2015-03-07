module Cli
  class Config
    class << self
      attr_reader :environment, :host

      def load environment = :production
        @environment = environment
        config = load_yaml
        @host = config["host"]
      end

      private 
      
      def load_yaml
        file_name = File.join(
                      File.expand_path("..", __FILE__),
                      "config/#{environment.to_s}.yaml"
                    )
        YAML::load_file file_name
      end
    end
  end
end