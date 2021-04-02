# /_post 아래의 폴더 구조를 통해 카테고리를 자동으로 생성한다.
# 메소드 재정의를 사용함.

module Jekyll
  class Document
    def categories_from_path(special_dir)
      superdirs = relative_path.sub(special_dir, "")
      superdirs = superdirs.split(File::SEPARATOR)
      superdirs.reject! { |c| c.empty? || c == special_dir || c == basename }
      puts relative_path
      merge_data!({ "categories" => superdirs }, :source => "file path")
    end
  end
end
