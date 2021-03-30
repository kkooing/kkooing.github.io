=begin
module Jekyll
module Tags
  class SidebarCategoryForm < Liquid::Tag

    def initialize(tag_name, input, tokens)
      super
      @input = input
    end
	
    def render(context)
	  site = context.registers[:site]
	  #puts site.data.navigation.categories[0].text
	  puts site.data["navigation"]
	  #"#{cat_name}"
    end
  end
end
end

Liquid::Template.register_tag('sidebar_catform', Jekyll::Tags::SidebarCategoryForm)
=end