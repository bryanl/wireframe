module Wireframe
  class Application
    class << self
      def run!(*arguments)
        if arguments.size != 3
          puts "usage: wireframe image <size> <output file>"
          exit 1
        end

        class_name, coordinates, output = arguments
        sketcher = Wireframe.const_get class_name.capitalize
        image = sketcher.new coordinates  
        File.open(output, 'w') {|f| f.write(image.draw)}
      end
    end
  end
end
