module Jekyll
  class SidebarCategoryForm < Liquid::Tag
    safe true
	
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('sidebar_category_form', Jekyll::SidebarCategoryForm)