# /_site 의 post 폴더 구조에 카테고리 페이지를 생성한다.
# post 와 category_page 모두 basename 이 index.html 이므로
# post를 카테고리 계층 사이에 생성하면 안된다.

module SamplePlugin
  class CategoryPageGenerator < Jekyll::Generator
    safe true

    def generate(site)	  
      site.categories.each do |category, posts|
        site.pages << CategoryPage.new(site, category, posts)
      end
    end
  end

  # Subclass of `Jekyll::Page` with custom method definitions.
  class CategoryPage < Jekyll::Page
    def initialize(site, category, posts)
      @site = site             # the current site instance.
      @base = site.source      # path to the source directory.
	  
	  p_basename = posts.first.basename
      p_special_dir = posts.first.collection.relative_directory
      p_superdirs = posts.first.relative_path.sub(p_special_dir, "")
	  p_superdirs = p_superdirs.sub(/#{category}.*/,"") << category
      @dir  = p_superdirs      # the directory the page will reside in.
      
      # All pages have the same filename, so define attributes straight away.
      @basename = 'index'      # filename without the extension.
      @ext      = '.html'      # the extension.
      @name     = 'index.html' # basically @basename + @ext.

      # Initialize data hash with a key pointing to all posts under current category.
      # This allows accessing the list in a template via `page.linked_docs`.
      @data = {
        'linked_docs' => posts
      }

      # Look up front matter defaults scoped to type `categories`, if given key
      # doesn't exist in the `data` hash.
      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(relative_path, :categories, key)
      end
    end

    # Placeholders that are used in constructing page URL.
    def url_placeholders
      {
        :category   => @dir,
        :basename   => basename,
        :output_ext => output_ext,
      }
    end
  end
end