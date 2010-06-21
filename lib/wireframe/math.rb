module Wireframe
  class Math
    def initialize(coordinates)
      @coordinates = coordinates
    end

    def height
      match[2].to_i
    end

    def width
      match[1].to_i
    end

    private

    def match
      @coordinates.match(/^(\d+)\+(\d+)$/)
    end
  end
end
