---
title           : "kramdown 문법 기초"
tags            : [kramdown, markdown]
thumbnail       : 
---
## 제목 \<h\>

{::nomarkdown}
<table><thead style="width: 100%"><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
# H1 제목
## H2 제목
### H3 제목
#### H4 제목
##### H5 제목
###### H6 제목
```
{::nomarkdown}
</td><td>
{:/}
```html
<h1>H1 제목</h1>
<h2>H2 제목</h2>
<h3>H3 제목</h3>
<h4>H4 제목</h4>
<h5>H5 제목</h5>
<h6>H6 제목</h6>
```
{::nomarkdown}
</td><td>
{:/}
<h1>H1 제목</h1>
<h2>H2 제목</h2>
<h3>H3 제목</h3>
<h4>H4 제목</h4>
<h5>H5 제목</h5>
<h6>H6 제목</h6>
{::nomarkdown}
</td></tr><tr><td>
{:/}
```md
H1 제목
==================

H2 제목
------------------
```
{::nomarkdown}
</td><td>
{:/}
```html
<h1>H1 제목</h1>
<h2>H2 제목</h2>
```
{::nomarkdown}
</td><td>
{:/}
<h1>H1 제목</h1>

<h2>H2 제목</h2>
{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 문단, 개행 \<p\>, \<br/\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
1번 문장, first line.
2번 문장, second line.
```
{::nomarkdown}
</td><td>
{:/}
```html
<p>1번 문장, first line.<br>
2번 문장, second line.</p>
```
{::nomarkdown}
</td><td>
{:/}
<p>1번 문장, first line.
2번 문장, second line.</p>
{::nomarkdown}
</td></tr><tr><td>
{:/}
```md
1번 문장, first line.

2번 문장, second line.
```
{::nomarkdown}
</td><td>
{:/}
```html
<p>1번 문장, first line.</p>
<p>2번 문장, second line.</p>
```
{::nomarkdown}
</td><td>
{:/}
<p>1번 문장, first line.</p>
<p>2번 문장, second line.</p>
{::nomarkdown}
</td></tr><tr><td>
{:/}
```md
1번 문장, first line.  
2번 문장, second line.
```
{::nomarkdown}
</td><td>
{:/}
```html
<p>1번 문장, first line.<br>
2번 문장, second line.</p>
```
{::nomarkdown}
</td><td>
{:/}
<p>1번 문장, first line.<br>
2번 문장, second line.</p>
{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 글자 꾸밈 \<em\>, \<strong\>...

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
일반
```
{::nomarkdown}
</td><td>
{:/}
```html
일반
```
{::nomarkdown}
</td><td>
{:/}
일반
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
```md
*기울임*
_기울임_
```
{::nomarkdown}
</td><td>
{:/}
```html
<em>기울임</em>
```
{::nomarkdown}
</td><td>
{:/}
*기울임*
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
```md
**굵게**
```
{::nomarkdown}
</td><td>
{:/}
```html
<strong>굵게</strong>
```
{::nomarkdown}
</td><td>
{:/}
<strong>굵게</strong>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<small>작게</small>
```
{::nomarkdown}
</td><td>
{:/}
<small>작게</small>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<mark>마킹</mark>
```
{::nomarkdown}
</td><td>
{:/}
<mark>마킹</mark>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<ins>밑줄</ins>
```
{::nomarkdown}
</td><td>
{:/}
<ins>밑줄</ins>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<del>취소선</del>
```
{::nomarkdown}
</td><td>
{:/}
<del>취소선</del>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<sub>아래첨자</sub>
```
{::nomarkdown}
</td><td>
{:/}
<sub>아래첨자</sub>
^
{::nomarkdown}
</td></tr><tr><td>
{:/}
-
^
{::nomarkdown}
</td><td>
{:/}
```html
<sup>위첨자</sup>
```
{::nomarkdown}
</td><td>
{:/}
<sup>위첨자</sup>
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

**연달아 쓰기**  
일반*기울임***굵게**<small>작게</small><mark>마킹</mark><ins>밑줄</ins><del>취소선</del><sub>아래첨자</sub><sup>위첨자</sup>

## 리스트
### ordered \<ol\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
1. 첫 번째 항목
2. 두 번째 항목
9. 순서 무관
```
{::nomarkdown}
</td><td>
{:/}
```html
<ol>
  <li>첫 번째 항목</li>
  <li>두 번째 항목</li>
  <li>순서 무관</li>
</ol>
```
{::nomarkdown}
</td><td>
{:/}
1. 첫 번째 항목
2. 두 번째 항목
9. 순서 무관
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

### unordered \<ul\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
* 첫 번째 항목
+ 두 번째 항목
- 기호 무관
```
{::nomarkdown}
</td><td>
{:/}
```html
<ul>
  <li>첫 번째 항목</li>
  <li>두 번째 항목</li>
  <li>기호 무관</li>
</ul>
```
{::nomarkdown}
</td><td>
{:/}
* 첫 번째 항목
+ 두 번째 항목
- 기호 무관
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

### definition \<dl\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1
```
{::nomarkdown}
</td><td>
{:/}
```html
<dl>
  <dt>첫 번째 용어</dt>
  <dd>정의 1</dd>
  <dd>정의 2</dd>
  <dt>두 번째 용어</dt>
  <dt>세 번째 용어</dt>
  <dd>정의 1</dd>
</dl>
```
{::nomarkdown}
</td><td>
{:/}
첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 코드 블록 \<pre\>\<code\>
### 들여쓰기 방식

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
앞쪽 일반 문장

    코드 첫 줄. # 4공백 또는 탭
이어짐.
    그리고 두 번째 줄.

뒤쪽 일반 문장
```
{::nomarkdown}
</td><td>
{:/}
```html
앞쪽 일반 문장
<pre>
  <code>코드 첫 줄. 이어짐.
그리고 두 번째 줄.
  </code>
</pre>
뒤쪽 일반 문장
```
{::nomarkdown}
</td><td>
{:/}
앞쪽 일반 문장

    코드 첫 줄.
이어짐.
    그리고 두 번째 줄.

뒤쪽 일반 문장
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

### 기호 방식

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
````md
```
기호 3개 이상으로 코드블록 생성
```
````
{::nomarkdown}
</td><td>
{:/}
```html
<pre>
  <code>코드 첫 줄. 이어짐.
그리고 두 번째 줄.
  </code>
</pre>
```
{::nomarkdown}
</td><td>
{:/}
```
코드
```
{::nomarkdown}
</td></tr></tbody></table>
{:/}

`` ` `` 대신 `~` 사용 가능

### 기타

`````md
````
코드 시작
```
코드 블록 마지막 줄의 기호 개수는 첫줄보다 많으면 된다.
````
`````

````
코드 시작
```
코드 블록 마지막 줄의 기호 개수는 첫줄보다 많으면 된다.
````

## 인용 \<blockquote\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
> 인용구 내 첫 번째 문장.
> 이어지는 다음 문장.
```
{::nomarkdown}
</td><td>
{:/}
```html
<blockquote>
  <p>인용구 내 첫 번째 문장.
이어지는 다음 문장.</p>
</blockquote>
```
{::nomarkdown}
</td><td>
{:/}
> 인용구 내 첫 번째 문장.
> 이어지는 다음 문장.
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 미주(footnote)

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
본문 문장.[^1]  
본문 문장.[^a]

[^1]: 미주1
[^a]: 미주2
```
{::nomarkdown}
</td><td>
{:/}
```html
* 생략 *
```
{::nomarkdown}
</td><td>
{:/}

<p>
  본문 문장.
  <sup id="fnref:1-tb" role="doc-noteref">
    <a href="#fn:1-tb" class="footnote">1</a>
  </sup><br>
  본문 문장.
  <sup id="fnref:a-tb" role="doc-noteref">
    <a href="#fn:a-tb" class="footnote">2</a>
  </sup>
</p>

<div class="footnotes" role="doc-endnote">
  <ol>
    <li id="fn:1-tb" role="doc-endnote" tabindex="-1" style="outline: none;">
      <p>미주1&nbsp;<a href="#fnref:1-tb" class="reversefootnote" role="doc-backlink">↩</a></p>
    </li>
    <li id="fn:a-tb" role="doc-endnote">
      <p>미주2&nbsp;<a href="#fnref:a-tb" class="reversefootnote" role="doc-backlink">↩</a></p>
    </li>
  </ol>
</div>

{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 수평선 \<hr/\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
***
---
___
* * *
- - -
_ _ _
------------
```
{::nomarkdown}
</td><td>
{:/}
```html
<hr/>
```
{::nomarkdown}
</td><td>
{:/}
^
---
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}

## 표 \<table\>

{::nomarkdown}
<table><thead><tr>
      <th>kramdown</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr></thead>
  <tbody><tr><td>
{:/}
```md
| h1 | h2 |
|----|----|
| b1 | b2 |
| b3 | b4 |
|====|====|
| f1 | f2 |
```
{::nomarkdown}
</td><td>
{:/}
```html
<table>
  <thead>
    <tr>
      <th>h1</th>
      <th>h2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>b1</td>
      <td>b2</td>
    </tr>
    <tr>
      <td>b3</td>
      <td>b4</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td>f1</td>
      <td>f2</td>
    </tr>
  </tfoot>
</table>
```
{::nomarkdown}
</td><td>
{:/}
^
| h1 | h2 |
|----|----|
| b1 | b2 |
| b3 | b4 |
|====|====|
| f1 | f2 |
^
{::nomarkdown}
</td></tr></tbody></table>
{:/}
