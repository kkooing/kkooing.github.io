---
title           : "Jekyll 블로그 잡다 기록"
tags            : [jekyll, github-pages, blog]
thumbnail       : 
---
## 플러그인 추가
/_posts 폴더 아래에 카테고리별 폴더를 만들어서 게시물을 분류하려고 한다. Jekyll은 폴더 안에 포스트를 넣으면 해당 포스트에 자동으로 카테고리를 달아준다. 

```
폴더 구조:
./
├── cat-A/
│   ├── cat-1/
│   │   └── _posts/
│   │       └── 2021-03-07-sample-post-1.md
│   └── cat-2/
│       └── _posts/
│           └── 2021-03-21-sample-post-2.md
└── _posts/
    ├── cat-B/
    │   └── 2021-03-17-sample-post-3.md
    └── cat-C/
        └── 2021-04-02-sample-post-4.md

결과:
  sample-post-1의 카테고리: [cat-A, cat-1]
  sample-post-2의 카테고리: [cat-A, cat-2]
  sample-post-3의 카테고리: []
  sample-post-4의 카테고리: []

결론:
  _posts/ 아래의 폴더는 무시된다.
```

이러한 결과에 대해서는 ``Jekyll::Document::categories_from_path``에도 설명되어있다.

```
// Jekyll::Document::categories_from_path

# Add superdirectories of the special_dir to categories.
# In the case of es/_posts, 'es' is added as a category.
# In the case of _posts/es, 'es' is NOT added as a category.
#
# Returns nothing.
```

플러그인을 통해 다음의 결과를 얻으려 한다.

```
폴더 구조:
./
└── _posts/
    ├── cat-A/
    │   ├── cat-1/
    │   │   └── 2021-03-07-sample-post-1.md
    │   └── cat-2/
    │       └── 2021-03-21-sample-post-2.md
    ├── cat-B/
    │   └── 2021-03-17-sample-post-3.md
    └── cat-C/
        └── 2021-04-02-sample-post-4.md

결과:
  sample-post-1의 카테고리: [cat-A, cat-1]
  sample-post-2의 카테고리: [cat-A, cat-2]
  sample-post-3의 카테고리: [cat-B]
  sample-post-4의 카테고리: [cat-C]
```

_plugins/에 다음 파일을 생성한다.

```
// jekyll-auto-cat.rb

module Jekyll
  class Document
    def categories_from_path(special_dir)
      superdirs = relative_path.sub(special_dir, "").downcase
      superdirs = superdirs.split(File::SEPARATOR)
      superdirs.reject! { |c| c.empty? || c == special_dir || c == basename }
      merge_data!({ "categories" => superdirs }, :source => "file path")
    end
  end
end
```

분명히 소문자로 폴더명을 지었고 로컬에서 블로그를 실행하면 아무 문제 없는데 git에 올릴때는 알 수 없는 이유로 대문자 카테고리가 추가 생성되는 오류가 있었다. 그래서 일단은 4번째 줄의 downcase로 임시조치해 놓았다.

## HTML 구조


