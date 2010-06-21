module Wireframe
  class Image
    def initialize(coordinates)
      math = Math.new(coordinates)
      @height = math.height
      @width = math.width

      @canvas = Magick::Image.new(@width, @height) do
        self.background_color = 'white'
      end

    end

    def draw
      gc = Magick::Draw.new      
      gc.stroke('black')

      draw_lines(gc)
      draw_box(gc)

      gc.draw(@canvas)
      @canvas.to_blob {self.format = "PNG"}
    end

    private

    def draw_box(gc)
      gc.fill_opacity(0)
      gc.rectangle(1, 1, @width - 1, @height - 1)
    end

    def draw_lines(gc)
      gc.line(1, 1, @width - 1, @height - 1)
      gc.line(1, @height - 1, @width - 1, 1)
    end
  end
end
