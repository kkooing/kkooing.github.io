---
title           : "번역: TeX and LaTeX Support"
tags            : [mathjax, latex]
use_math        : true
thumbnail       : 
---
원문: [TeX and LaTeX Support](http://docs.mathjax.org/en/latest/input/tex/index.html)

## 0. TeX, LaTeX 지원
&nbsp;MathJax는 두 가지 기능이 포함되어있다. 첫 번째는 문서에서 수식 구문(ex: `$$...$$`)을 찾는 것이고, 두 번째는 Tex 표현식을 MathJax 내부 형식으로 변환하고 웹 페이지에 표시하는것 이다. 버전2 에서는 이 두 가지 기능이 `tex2jax`전처리기와 TeX input jax로 분리되어 있었지만, 버전3 에서는 통합되었다.

&nbsp;TeX input jax는 원하는 수식 구문 마커를 찾도록 설정할 수 있다. [TeX configuration options](http://docs.mathjax.org/en/latest/options/input/tex.html#tex-options)

&nbsp;MathJax는 수식 구문을 MathJax 내부 형식(기본적으로 MathML)으로 변환한다. 또한 추가 기능을 위한 확장을 사용할 수 있다. [TeX and LaTeX extensions](http://docs.mathjax.org/en/latest/input/tex/extensions.html#tex-extensions)

## 1. 실제 TeX와의 차이
&nbsp;웹 표현을 위한 MathJax는 인쇄를 위한 TeX 지원에 한계가 있다. 그래서 실제 TeX/LaTeX와 MathJax의 TeX 입력에는 일부 차이점이 있다.

&nbsp;우선, MathJax는 text모드 없이 오직 math모드만을 구현한다. 문서의 텍스트 처리는 표준 HTML 태그로 이루어져야 하고, MathJax는 수식 부분만 처리한다. 그러므로 MathJax는 `\emph`, `\begin{enumerate}...\end{enumerate}` 등의 text모드 매크로나 환경을 구현하지 못한다. 이러한 형식 지정 작업을 위해서는 HTML을 사용해야한다. LaTeX-to-HTML변환기가 필요하다면 MathJax 이외의 옵션을 고려해야한다.

&nbsp;위 규칙에서 두 가지 예외가 있는데 첫째는 `\ref` 이고, 둘째는 `$`기호를 이스케이프 하기 위한 `\text{}`같은 매크로이다. 하지만 일반적으로 이러한 텍스트 블록 내에서 다른 매크로는 작동하지 않는다. 즉, `\text{some \textbf{bold} text}`는 \"some \textbf{bold} text\" 로 축력된다.

&nbsp;버전3.1에서는 text모드 매크로를 위한 확장 기능이 있다.[textmacros](http://docs.mathjax.org/en/latest/input/tex/extensions/textmacros.html#tex-textmacros)

&nbsp;두 번째로, MathJax의 일부 기능은 제한될 수 있다.

## 2. TeX/LaTeX 수식 구문 마커
&nbsp;MathJax에서 수식을 입력하는 방법은 display모드를 위한 `\[...\]`, `$$...$$`와 text모드를 위한 `\(...\)` 가 있다. `$...$`를 text모드 입력 구문으로 사용하려면 아래처럼 설정해야한다. 

```js
window.MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\(', '\\)']]
  }
};
```

&nbsp;수식 내부에서 `\begin{equation}...\end{equation}` 같은 환경명령을 실행할 수 있게 설정할 수 있다.. ([TeX Input Processor Options](http://docs.mathjax.org/en/latest/options/input/tex.html#tex-options)의 processEnvironments 설정)

&nbsp;Tex 입력기의 추가 설정 방법: [tex configuration options](http://docs.mathjax.org/en/latest/options/input/tex.html#tex-options)

## 3. HTML에서의 주의사항
### 3.1 HTML 특수기호
&nbsp;MathJax 구문 안에서 &lt;, &gt;, &amp; 를 입력하려면 앞뒤로 공백을 두거나 HTML entity 를 사용한다.

### 3.2 CMS와의 상호작용
CMS(Content-Management Systems: markdown 같은거)를 사용할 때는 이스케이프에 주의한다.

## 4. TeX 매크로 정의
&nbsp;사용자 정의 매크로와 환경을 만들기 위해 **수식구문 내에서**  `\def`, `\newcommand`, `\renewcommand`, `\newenvironment`, `\renewenvironment`, `\let` 를 사용할 수 있다.

{% raw %}
```js
\(
   \def\RR{{\bf R}}
   \def\bold#1{{\bf #1}}
\)
```
{% endraw %}

환경 설정을 통해 매크롤르 정의할 수도 있다.

```js
window.MathJax = {
  tex: {
    macros: {
      RR: "{\\bf R}",
     bold: ["{\\bf #1}", 1]
    }
  }
};
```

[configmacros Options](http://docs.mathjax.org/en/latest/input/tex/extensions/configmacros.html#tex-configmacros-options)

## 5. 자동 방정식 번호 지정
&nbsp;기본적으로 꺼져있지만 아래 설정으로 활성화한다.

```js
window.MathJax = {
  tex: {
    tags: 'ams'
  }
};
```

&nbsp;`notag`또는 `\nonumber`로 개별적으로 번호를 끄거나, `\tag{}`로 수동 번호지정이 가능하다.

&nbsp;ams 환경에서는 `*`로 번호를 끄고 켤 수 있다.
번호 O

```js
\begin{equation}
   E = mc^2
\end{equation}
```

번호 X

```js
\begin{equation*}
   e^{\pi i} + 1 = 0
\end{equation*}
```

&nbsp;`\label`과 `\ref` 또는 `\eqref`로 방정식 참조하는법

```js
In equation \eqref{eq:sample}, we find the value of an
interesting integral:

\begin{equation}
  \int_0^\infty \frac{x^3}{e^x-1}\,dx = \frac{\pi^4}{15}
  \label{eq:sample}
\end{equation}
```

[tagformat](http://docs.mathjax.org/en/latest/input/tex/extensions/tagformat.html#tex-tagformat) 확장  
[Resetting Automatic Equation Numbering](http://docs.mathjax.org/en/latest/web/typeset.html#tex-reset)

## 6. TeX/LaTeX 확장

### 6.1. TeX 확장 로드

```js
window.MathJax = {
  loader: {load: ['[tex]/color']},
  tex: {packages: {'[+]': ['color']}}
};
```

```js
window.MathJax = {
  tex: {packages: {'[-]': ['require', 'autoload']}}
};
```

### 6.2. 런타임에 TeX 확장 로드

```js
\(\require{color}\)
```

### 6.3. TeX 확장 설정

```js
window.MathJax = {
  loader: {load: ['[tex]/color']},
  tex: {
    packages: {'[+]': ['color']},
    color: {
      padding: '5px'
    }
  }
};
```

```js
window.MathJax = {
  '[tex]/color': {
    padding: '5px'
  }
};
```

## 7. TeX/LaTeX 확장 목록

* action
* ams
* amscd
* autoload
* bbox
* boldsymbol
* braket
* bussproofs
* cancel
* color
* colorv2
* configmacros
* enclose
* extpfeil
* html
* mhchem
* newcommand
* noerrors
* noundefined
* physics
* require
* tagformat
* textmacros
* unicode
* verb

&nbsp;커스텀 TeX 확장을 만들기 위해서는 [A Custom Extension](http://docs.mathjax.org/en/latest/web/webpack.html#custom-extension) 참조.

## 8. TeX/LaTeX 명령어
