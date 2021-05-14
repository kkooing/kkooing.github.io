---
title           : "kramdown 문법 기초"
tags            : [kramdown, markdown]
thumbnail       : 
---
## 제목 \<h\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
# H1 제목
## H2 제목
### H3 제목
#### H4 제목
##### H5 제목
###### H6 제목
```
</td><td markdown=1>
```html
<h1>H1 제목</h1>
<h2>H2 제목</h2>
<h3>H3 제목</h3>
<h4>H4 제목</h4>
<h5>H5 제목</h5>
<h6>H6 제목</h6>
```
</td><td markdown=1>
# H1 제목
## H2 제목
### H3 제목
#### H4 제목
##### H5 제목
###### H6 제목
</td>
    </tr>
    <tr>
<td markdown=1>
```md
H1 제목
==========

H2 제목
----------
```
</td><td markdown=1>
```html
<h1>H1 제목</h1>
<h2>H2 제목</h2>
```
</td><td markdown=1>
H1 제목
==========

H2 제목
----------
</td>
    </tr>
  </tbody>
</table>
</div>

## 문단, 개행 \<p\>, \<br/\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
1번 문장, first line.
2번 문장, second line.
```
</td><td markdown=1>
```html
<p>1번 문장, first line.<br>
2번 문장, second line.</p>
```
</td><td markdown=1>
1번 문장, first line.
2번 문장, second line.
</td>
    </tr>
    <tr>
<td markdown=1>
```md
1번 문장, first line.

2번 문장, second line.
```
</td><td markdown=1>
```html
<p>1번 문장, first line.</p>
<p>2번 문장, second line.</p>
```
</td><td markdown=1>
1번 문장, first line.

2번 문장, second line.
</td>
    </tr>
    <tr>
<td markdown=1>
```md
1번 문장, first line.  
2번 문장, second line.
```
</td><td markdown=1>
```html
<p>1번 문장, first line.<br>
2번 문장, second line.</p>
```
</td><td markdown=1>
1번 문장, first line.  
2번 문장, second line.
</td>
    </tr>
  </tbody>
</table>
</div>

## 글자 꾸밈 \<em\>, \<strong\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
일반
```
</td><td markdown=1>
```html
일반
```
</td><td markdown=1>
일반
</td>
    </tr>
    <tr>
<td markdown=1>
```md
*기울임*
_기울임_
```
</td><td markdown=1>
```html
<em>기울임</em>
```
</td><td markdown=1>
*기울임*
</td>
    </tr>
    <tr>
<td markdown=1>
```md
**굵게**
```
</td><td markdown=1>
```html
<strong>굵게</strong>
```
</td><td markdown=1>
**굵게**
</td>
    </tr>
  </tbody>
</table>
</div>

## 리스트
### ordered \<ol\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
1. 첫 번째 항목
2. 두 번째 항목
9. 순서 무관
```
</td><td markdown=1>
```html
<ol>
  <li>첫 번째 항목</li>
  <li>두 번째 항목</li>
  <li>순서 무관</li>
</ol>
```
</td><td markdown=1>
1. 첫 번째 항목
2. 두 번째 항목
9. 순서 무관
</td>
    </tr>
  </tbody>
</table>
</div>

### unordered \<ul\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
* 첫 번째 항목
+ 두 번째 항목
- 기호 무관
```
</td><td markdown=1>
```html
<ul>
  <li>첫 번째 항목</li>
  <li>두 번째 항목</li>
  <li>기호 무관</li>
</ul>
```
</td><td markdown=1>
* 첫 번째 항목
+ 두 번째 항목
- 기호 무관
</td>
    </tr>
  </tbody>
</table>
</div>

### definition \<dl\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1
```
</td><td markdown=1>
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
</td><td markdown=1>
첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1
</td>
    </tr>
  </tbody>
</table>
</div>

## 코드
### 블록 코드 \<pre\>\<code\>
#### 들여쓰기 방식
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
앞쪽 일반 문장

    코드 첫 줄. # 4공백 또는 탭
이어짐.
    그리고 두 번째 줄.

뒤쪽 일반 문장
```
</td><td markdown=1>
```html
앞쪽 일반 문장
<pre>
  <code>코드 첫 줄. 이어짐.
그리고 두 번째 줄.
  </code>
</pre>
뒤쪽 일반 문장
```
</td><td markdown=1>
앞쪽 일반 문장

    코드 첫 줄.
이어짐.
    그리고 두 번째 줄.

뒤쪽 일반 문장
</td>
    </tr>
  </tbody>
</table>
</div>

#### 기호 방식
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
````md
```
기호 ` 3개 이상으로 코드블록 생성
```
````
</td><td markdown=1>
```html
<pre>
  <code>코드
  </code>
</pre>
```
</td><td markdown=1>
```
코드
```
</td>
    </tr>
  </tbody>
</table>
</div>

### 인라인 코드 \<code\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
기호 ` 1개 또는 2개로
`문장 내부의 코드` 작성
```
</td><td markdown=1>
```html
기호 ` 1개 또는 2개로
<code>문장 내부의 코드</code> 작성
```
</td><td markdown=1>
기호 \` 1개 또는 2개로 `문장 내부의 코드` 작성
</td>
    </tr>
  </tbody>
</table>
</div>

### 추가
`` ` `` 대신 `~` 사용 가능

코드 블록을 닫을 때 `` ` `` 의 개수는 열 때보다 많을 수 있다.

`````md
```
코드 블록 내부
````
`````

## 인용 \<blockquote\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
> 인용구 내 첫 번째 문장.
> 이어지는 다음 문장.
```
</td><td markdown=1>
```html
<blockquote>
  <p>인용구 내 첫 번째 문장.
이어지는 다음 문장.</p>
</blockquote>
```
</td><td markdown=1>
> 인용구 내 첫 번째 문장.
> 이어지는 다음 문장.
</td>
    </tr>
  </tbody>
</table>
</div>

## 미주(footnote)
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
본문 문장.[^1]  
본문 문장.[^a]

[^1]: 미주1
[^a]: 미주2
```
</td><td markdown=1>
```html
* 생략 *
```
</td><td>

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

</td>
    </tr>
  </tbody>
</table>
</div>

## 수평선 \<hr/\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
***
---
___
* * *
- - -
_ _ _
------------
```
</td><td markdown=1>
```html
<hr/>
```
</td><td markdown=1>
---
</td>
    </tr>
  </tbody>
</table>
</div>

## 표 \<table\>
<div class="sx nw">
<table>
  <thead>
    <tr><th>kramdown</th><th>HTML</th><th>브라우저</th></tr>
  </thead>
  <tbody>
    <tr>
<td markdown=1>
```md
| h1 | h2 |
|----|----|
| b1 | b2 |
| b3 | b4 |
|====|====|
| f1 | f2 |
```
</td><td markdown=1>
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
</td><td markdown=1>
^
| h1 | h2 |
|----|----|
| b1 | b2 |
| b3 | b4 |
|====|====|
| f1 | f2 |
^
</td>
    </tr>
  </tbody>
</table>
</div>