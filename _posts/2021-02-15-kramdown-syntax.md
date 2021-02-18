---
title:      "kramdown 문법 / 예시"
categories: [blog]
tags:       [blog, kramdown, markdown]
last_modified_at: 2021-02-17T01:24:13+09:00
toc: true
toc_sticky: true
---
## 제목 \<h\>

| {::nomarkdown}markdown<br/>(kramdown){:/} | HTML | 브라우저 |
| {::nomarkdown}<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gh"># H1 제목</span><span class="gu">## H2 제목</span><span class="gu">### H3 제목</span><span class="gu">#### H4 제목</span><span class="gu">##### H5 제목</span><span class="gu">###### H6 제목</span></code></pre></div></div>{:/} | {::nomarkdown}<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;h1&gt;</span>H1 제목<span class="nt">&lt;/h1&gt;</span><span class="nt">&lt;h2&gt;</span>H2 제목<span class="nt">&lt;/h2&gt;</span><span class="nt">&lt;h3&gt;</span>H3 제목<span class="nt">&lt;/h3&gt;</span><span class="nt">&lt;h4&gt;</span>H4 제목<span class="nt">&lt;/h4&gt;</span><span class="nt">&lt;h5&gt;</span>H5 제목<span class="nt">&lt;/h5&gt;</span><span class="nt">&lt;h6&gt;</span>H6 제목<span class="nt">&lt;/h6&gt;</span></code></pre></div></div>{:/} | {::nomarkdown}<h1>H1 제목</h1><h2>H2 제목</h2><h3>H3 제목</h3><h4>H4 제목</h4><h5>H5 제목</h5><h6>H6 제목</h6>{:/} |







|{::nomarkdown}
<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gu">H1 제목
==================
</span>
<span class="gh">H2 제목
-------------------
</span></code></pre></div></div>
{:/}|{::nomarkdown}
<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;h1&gt;</span>H1 제목<span class="nt">&lt;/h1&gt;</span>
<span class="nt">&lt;h2&gt;</span>H2 제목<span class="nt">&lt;/h2&gt;</span>
</code></pre></div></div>
{:/}|{::nomarkdown}
<h1>H1 제목</h1>

<h2>H2 제목</h2>
{:/}|

## 문단, 개행 &lt;p&gt;, &lt;br/&gt;

<table>
  <thead>
    <tr>
      <th>markdown<br/>
      (kramdown)</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code>1번 문장, first line.
2번 문장, second line.
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;p&gt;</span>1번 문장, first line.<span class="nt">&lt;br&gt;</span>
2번 문장, second line.<span class="nt">&lt;/p&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<p>1번 문장, first line.
2번 문장, second line.</p>

      </td>
    </tr>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code>1번 문장, first line.

2번 문장, second line.
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;p&gt;</span>1번 문장, first line.<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;p&gt;</span>2번 문장, second line.<span class="nt">&lt;/p&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<p>1번 문장, first line.</p>
<p>2번 문장, second line.</p>

      </td>
    </tr>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code>1번 문장, first line.  
2번 문장, second line.
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;p&gt;</span>1번 문장, first line.<span class="nt">&lt;br&gt;</span>
2번 문장, second line.<span class="nt">&lt;/p&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<p>1번 문장, first line.<br>
2번 문장, second line.</p>

      </td>
    </tr>
  </tbody>
</table>

## 글자 꾸밈 &lt;em&gt;, &lt;strong&gt;...

<table>
  <thead>
    <tr>
      <th>markdown<br/>
      (kramdown)</th>
      <th>HTML</th>
      <th>브라우저</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code>일반
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code>일반
</code></pre></div></div>

      </td>
      <td>

일반

      </td>
    </tr>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="ge">*기울임*</span>
<span class="ge">_기울임_</span>
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;em&gt;</span>기울임<span class="nt">&lt;/em&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<em>기울임</em>

      </td>
    </tr>
    <tr>
      <td>

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gs">**굵게**</span>
<span class="gs">__굵게__</span>
</code></pre></div></div>

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;strong&gt;</span>굵게<span class="nt">&lt;/strong&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<strong>굵게</strong>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;small&gt;</span>작게<span class="nt">&lt;/small&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<small>작게</small>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;mark&gt;</span>마킹<span class="nt">&lt;/mark&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<mark>마킹</mark>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;ins&gt;</span>밑줄<span class="nt">&lt;/ins&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<ins>밑줄</ins>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;del&gt;</span>취소선<span class="nt">&lt;/del&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<del>취소선</del>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;sub&gt;</span>아래첨자<span class="nt">&lt;/sub&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<sub>아래첨자</sub>

      </td>
    </tr>
    <tr>
      <td>

-

      </td>
      <td>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;sup&gt;</span>위첨자<span class="nt">&lt;/sup&gt;</span>
</code></pre></div></div>

      </td>
      <td>

<sup>위첨자</sup>

      </td>
    </tr>
  </tbody>
</table>

### 연달아 쓰기
일반*기울임***굵게**<small>작게</small><mark>마킹</mark><ins>밑줄</ins><del>취소선</del><sub>아래첨자</sub><sup>위첨자</sup>

## 리스트
### ordered &lt;ol&gt;

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="p">1.</span> 첫 번째 항목
<span class="p">2.</span> 두 번째 항목
<span class="p">9.</span> 순서 무관
</code></pre></div></div>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;ol&gt;</span>
  <span class="nt">&lt;li&gt;</span>첫 번째 항목<span class="nt">&lt;/li&gt;</span>
  <span class="nt">&lt;li&gt;</span>두 번째 항목<span class="nt">&lt;/li&gt;</span>
  <span class="nt">&lt;li&gt;</span>순서 무관<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ol&gt;</span>
</code></pre></div></div>

1. 첫 번째 항목
2. 두 번째 항목
9. 순서 무관


### unordered &lt;ul&gt;

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="p">*</span> 첫 번째 항목
<span class="p">+</span> 두 번째 항목
<span class="p">-</span> 기호 무관
</code></pre></div></div>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;ul&gt;</span>
  <span class="nt">&lt;li&gt;</span>첫 번째 항목<span class="nt">&lt;/li&gt;</span>
  <span class="nt">&lt;li&gt;</span>두 번째 항목<span class="nt">&lt;/li&gt;</span>
  <span class="nt">&lt;li&gt;</span>기호 무관<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ul&gt;</span>
</code></pre></div></div>

* 첫 번째 항목
+ 두 번째 항목
- 기호 무관

### definition &lt;dl&gt;

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code>첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1
</code></pre></div></div>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;dl&gt;</span>
  <span class="nt">&lt;dt&gt;</span>첫 번째 용어<span class="nt">&lt;/dt&gt;</span>
  <span class="nt">&lt;dd&gt;</span>정의 1<span class="nt">&lt;/dd&gt;</span>
  <span class="nt">&lt;dd&gt;</span>정의 2<span class="nt">&lt;/dd&gt;</span>
  <span class="nt">&lt;dt&gt;</span>두 번째 용어<span class="nt">&lt;/dt&gt;</span>
  <span class="nt">&lt;dt&gt;</span>세 번째 용어<span class="nt">&lt;/dt&gt;</span>
  <span class="nt">&lt;dd&gt;</span>정의 1<span class="nt">&lt;/dd&gt;</span>
<span class="nt">&lt;/dl&gt;</span>
</code></pre></div></div>

첫 번째 용어
: 정의 1
: 정의 2

두 번째 용어
세 번째 용어
: 정의 1

## 코드 블록 &lt;pre&gt;, &lt;code&gt;

### 들여쓰기 방식
```md
앞쪽 일반 문장

	코드 시작 # 4공백 또는 1탭
코드 이어짐

뒤쪽 일반 문장
```

앞쪽 일반 문장

	코드 시작
코드 이어짐

뒤쪽 일반 문장

### 기호 방식

````md
```
기호 3개 이상으로 코드블록 생성
```
````

```
코드
```
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

## 인용 &lt;blockquote&gt;

<div class="language-md highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="gt">&gt; 인용구 내 첫 번째 문장.</span>
<span class="gt">&gt; 이어지는 다음 문장.</span>
</code></pre></div></div>

<div class="language-html highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="nt">&lt;blockquote&gt;</span>
  <span class="nt">&lt;p&gt;</span>인용구 내 첫 번째 문장.
이어지는 다음 문장.<span class="nt">&lt;/p&gt;</span>
<span class="nt">&lt;/blockquote&gt;</span>
</code></pre></div></div>

> 인용구 내 첫 번째 문장.
> 이어지는 다음 문장.

## 수평선 &lt;hr/&gt;

<table style="width:100%">
  <caption>Monthly savings</caption>
  <tr>
    <th>&lt;tr&gt;&lt;th&gt;Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>&lt;td&gt;Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>&lt;td&gt;Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>


<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature.
</blockquote>
<p>WWF's goal is to: <q>Build a future where people live in harmony with nature.</q></p>
<p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>