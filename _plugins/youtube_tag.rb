# Title: Responsive YouTube embed tag for Jekyll
# Author: Brett Terpstra <http://brettterpstra.com>
# Description: Output a simple YouTube embed tag with code to make it responsive
#
# Syntax {% youtube video_id [width height] %}
#
# Example:
# {% youtube B4g4zTF5lDo 480 360 %}
# {% youtube http://youtu.be/2NI27q3xNyI %}

module Jekyll
  class YouTubeTag < Liquid::Tag
    @videoid = nil
    @width = ''
    @height = ''

    def initialize(tag_name, markup, tokens)
      if markup =~ /(?:(?:https?:\/\/)?(?:www.youtube.com\/(?:embed\/|watch\?v=)|youtu.be\/)?(\S+)(?:\?rel=\d)?)(?:\s+(\d+)\s(\d+))?/i
        @videoid = $1
        @width = $2 || "480"
        @height = $3 || "360"
      end
      super
    end

    def render(context)
      ouptut = super
      if @videoid
        video = %Q{<iframe width="#{@width}" height="#{@height}" src="http://www.youtube.com/embed/#{@videoid}?rel=0" frameborder="0" allowfullscreen></iframe>}
      else
        "Error processing input, expected syntax: {% youtube video_id [width height] %}"
      end
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YouTubeTag)
