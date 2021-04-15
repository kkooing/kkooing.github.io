---
title           : "샘플 html 태그"
tags            : [blog]
---
## 1. 단락 요소
<span style="color: red;">&lt;h1&gt; ~ &lt;h6&gt;</span><br />
<h1>&lt;h1&gt;</h1>
<h2>&lt;h2&gt;</h2>
<h3>&lt;h3&gt;</h3>
<h4>&lt;h4&gt;</h4>
<h5>&lt;h5&gt;</h5>
<h6>&lt;h6&gt;</h6>

<span style="color: red;">&lt;address&gt;</span><br />
<address>
Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br>
Visit us at:<br>
Example.com<br>
Box 564, Disneyland<br>
USA
</address>

## 2. 그룹 요소

<span style="color: red;">&lt;p&gt;</span><br />
<p>This is some text in a paragraph. This is some text in a paragraph.<br />
This is some text in a paragraph. This is some text in a paragraph.<br />다음은 이러한 스택이 웹 디자인에 사용되는 방식과 모든 웹 페이지에 사용해야하는 이유를 포함하여 "글꼴 스택"이라는 CSS 용어의 정의입니다.
</p>
<p>This is some text in a paragraph.</p>
<p>This is some text in a paragraph.</p>

<span style="color: red;">&lt;hr&gt;</span><br />
<hr>

<span style="color: red;">&lt;pre&gt;</span><br />
<pre>
#include &lt;iostream&gt;
using namespace std;

int main() {
  int i, n, cube;
  cout &lt;&lt; "Input the number of terms : ";
  cin &gt;&gt; n;
  for (i = 1; i &lt;= n; i++) {
    cube = i * i * i;
    cout &lt;&lt; "Number is: " &lt;&lt; i &lt;&lt; " and its cube is: " &lt;&lt; cube &lt;&lt; endl;
  }
}
1lI|ㅣ, 0Ooㅇ
|abcdefghijklmnopqrstuvwxyz|
|다람쥐 헌 쳇바퀴에 타고파.|
</pre>

<span style="color: red;">&lt;blockquote&gt;</span><br />
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature. The world's leading conservation organization, WWF works in <cite>100</cite> countries and is supported by 1.2 million members in the United States and close to 5 million globally.
</blockquote>

<span style="color: red;">&lt;ol&gt;</span><br />
<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<span style="color: red;">&lt;ul&gt;</span><br />
<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

<span style="color: red;">&lt;dl&gt;</span><br />
<dl>
  <dt>Coffee</dt>
  <dd>Black hot drink</dd>
  <dt>Milk</dt>
  <dd>White cold drink</dd>
</dl>

<span style="color: red;">&lt;figure&gt;</span><br />
<figure>
  <img src="https://www.w3schools.com/tags/pic_trulli.jpg" alt="Trulli" style="width:100%">
  <figcaption>Fig.1 - Trulli, Puglia, Italy.</figcaption>
</figure>

## 3. 택스트 요소
<span style="color: red;">&lt;a&gt;</span><br />
<a href="https://www.w3schools.com">Visit W3Schools.com!</a>

<span style="color: red;">&lt;em&gt; - 강조</span><br />
<p>You <em>have</em> to hurry up!</p>

<span style="color: red;">&lt;strong&gt; - 중요</span><br />
<strong>This text is important!</strong>

<span style="color: red;">&lt;small&gt;</span><br />
<p><small>This is some smaller text.</small></p>

<span style="color: red;">&lt;s&gt; - 정정</span><br />
<p><s>Only 50 tickets left!</s></p>

<span style="color: red;">&lt;cite&gt; - 작품명</span><br />
<p><cite>The Scream</cite> by Edward Munch. Painted in 1893.</p>

<span style="color: red;">&lt;q&gt; - 인용</span><br />
<p>WWF's goal is to:
<q>Build a future where people live in harmony with nature.</q>
We hope they succeed.</p>

<span style="color: red;">&lt;dfn&gt; - 정의</span><br />
<p><dfn>HTML</dfn> is the standard markup language for creating web pages.</p>

<span style="color: red;">&lt;abbr&gt; - 약어, 두문자어</span><br />
The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.

<span style="color: red;">&lt;ruby&gt; - 후리가나</span><br />
<ruby>
漢 <rt> ㄏㄢˋ </rt>
</ruby>

<span style="color: red;">&lt;data&gt;</span><br />
<ul>
  <li><data value="21053">Cherry Tomato</data></li>
  <li><data value="21054">Beef Tomato</data></li>
  <li><data value="21055">Snack Tomato</data></li>
</ul>

<span style="color: red;">&lt;time&gt;</span><br />
<p>Open from <time>10:00</time> to <time>21:00</time> every weekday.</p>
<p>I have a date on <time datetime="2008-02-14 20:00">Valentines day</time>.</p>

<span style="color: red;">&lt;code&gt;</span><br />
<p>The HTML <code>button</code> tag defines a clickable button.</p>

<span style="color: red;">&lt;var&gt;</span><br />
<p>The area of a triangle is: 1/2 x <var>b</var> x <var>h</var>, where <var>b</var> is the base, and <var>h</var> is the vertical height.</p>

<span style="color: red;">&lt;samp&gt; - 코드 출력</span><br />
<p><samp>File not found.<br>Press F1 to continue</samp></p>

<span style="color: red;">&lt;kbd&gt; - 코드 입력</span><br />
<p>Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy text (Windows).</p>

<span style="color: red;">&lt;sub&gt;, &lt;sup&gt;</span><br />
<p>This text contains <sub>subscript</sub><sup>superscript</sup> text.</p>
<p>This text contains <sup>superscript</sup> text.</p>

<span style="color: red;">&lt;i&gt; - 기울임 (무의미, 부각됨)</span><br />
<p><i>Lorem ipsum</i> is the most popular filler text in history.</p>

<span style="color: red;">&lt;b&gt; - 두껍게 (무의미)</span><br />
<p>This is normal text - <b>and this is bold text</b>.</p>

<span style="color: red;">&lt;u&gt; - 모호한 (지양됨)</span><br />
<p>This is some <u>mispeled</u> text.</p>

<span style="color: red;">&lt;mark&gt;</span><br />
<p>Do not forget to buy <mark>milk</mark> today.</p>

<span style="color: red;">&lt;bdi&gt;, &lt;bdo&gt;</span><br />
User <bdi>إيان</bdi>: 90 points<br />
<bdo dir="rtl">
This text will go right-to-left.
</bdo>

<span style="color: red;">&lt;span&gt;</span><br />
<p>My mother has <span style="color:blue">blue</span> eyes.</p>

<span style="color: red;">&lt;br&gt;</span><br />
<p>To force<br> line breaks<br> in a text,<br> use the br<br> element.</p>

<span style="color: red;">&lt;wbr&gt;</span><br />
<p>This is a veryveryveryveryveryveryveryveryveryveryveryveryveryveryveryveryveryvery<wbr>longwordthatwillbreakatspecific<wbr>placeswhenthebrowserwindowisresized.</p>

## 3. 편집 요소
<span style="color: red;">&lt;ins&gt;, &lt;del&gt;</span><br />
<p>My favorite color is <del>blue</del> <ins>red</ins>!</p>

## 4. 임베드 요소
<span style="color: red;">&lt;picture&gt;</span><br />
<picture>
  <source media="(min-width:650px)" srcset="https://www.w3schools.com/tags/img_white_flower.jpg">
  <source media="(min-width:465px)" srcset="https://www.w3schools.com/tags/img_orange_flowers.jpg">
  <img src="img_orange_flowers.jpg" alt="Flowers" style="width:auto;">
</picture>

<span style="color: red;">&lt;img&gt;</span><br />
<img src="https://www.w3schools.com/tags/img_girl.jpg" alt="Girl in a jacket" width="500" height="600">

<span style="color: red;">&lt;iframe&gt;</span><br />

<iframe src="http://192.168.0.152" title="W3Schools Free Online Web Tutorials"></iframe>

<span style="color: red;">&lt;embed&gt; - 비추천</span><br />
<span style="color: red;">&lt;object&gt;, &lt;param&gt;</span><br />

<span style="color: red;">&lt;video&gt;</span><br />
<video width="320" height="240" controls>
  <source src="https://www.w3schools.com/tags/movie.mp4" type="video/mp4">
  <source src="https://www.w3schools.com/tags/movie.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>

<span style="color: red;">&lt;audio&gt;</span><br />
<audio controls>
  <source src="https://www.w3schools.com/tags/horse.ogg" type="audio/ogg">
  <source src="https://www.w3schools.com/tags/horse.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>

<span style="color: red;">&lt;track&gt;</span><br />
<video width="320" height="240" controls>
  <source src="https://www.w3schools.com/tags/forrest_gump.mp4" type="video/mp4">
  <source src="https://www.w3schools.com/tags/forrest_gump.ogg" type="video/ogg">
  <track src="https://www.w3schools.com/tags/fgsubtitles_en.vtt" kind="subtitles" srclang="en" label="English">
  <track src="https://www.w3schools.com/tags/fgsubtitles_no.vtt" kind="subtitles" srclang="no" label="Norwegian">
</video>

<span style="color: red;">&lt;map&gt;, &lt;area&gt;</span><br />
<img src="https://www.w3schools.com/tags/workplace.jpg" alt="Workplace" usemap="#workmap" width="400" height="379">
<map name="workmap">
  <area shape="rect" coords="34,44,270,350" alt="Computer" href="computer.htm">
  <area shape="rect" coords="290,172,333,250" alt="Phone" href="phone.htm">
  <area shape="circle" coords="337,300,44" alt="Cup of coffee" href="coffee.htm">
</map>

## 5. 표 요소
<span style="color: red;">&lt;table&gt;, &lt;caption&gt;<br />
&lt;thead&gt;, &lt;tbody&gt;, &lt;tfoot&gt;,<br />
&lt;tr&gt;, &lt;td&gt;, &lt;th&gt;</span><br />
<table>
  <caption>Tbl.1 - Monthly savings</caption>
  <thead>
    <tr>
      <th>Month</th>
      <th>Savings</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>January</td>
      <td>$100</td>
    </tr>
    <tr>
      <td>February</td>
      <td>$80</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td>Sum</td>
      <td>$180</td>
    </tr>
  </tfoot>
</table>

<span style="color: red;">&lt;colgroup&gt;, &lt;col&gt;</span><br />
<table>
  <colgroup>
    <col span="2" style="background-color:red">
    <col style="background-color:yellow">
  </colgroup>
  <tr>
    <th>ISBN</th>
    <th>Title</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>3476896</td>
    <td>My first HTML</td>
    <td>$53</td>
  </tr>
</table>

## 6. 폼 요소
<span style="color: red;">&lt;form&gt;, &lt;label&gt;, &lt;input type=""&gt;</span><br />
<form action="/action_page.php">
  <label for="i-hidden">text:</label>
  <input type="hidden" id="i-hidden" name="i-hidden" value="Submit"><br/>
  <label for="i-text">text:</label>
  <input type="text" id="i-text" name="i-text"><br/>
  <label for="i-search">search:</label>
  <input type="search" id="i-search" name="i-search"><br/>
  <label for="i-tel">tel:</label>
  <input type="tel" id="i-tel" name="i-tel" placeholder="123-45-678" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required><br/>
  <label for="i-url">url:</label>
  <input type="url" id="i-url" name="i-url"><br/>
  <label for="i-email">email:</label>
  <input type="email" id="i-email" name="i-email"><br/>
  <label for="i-password">password:</label>
  <input type="password" id="i-password" name="i-password" value="sadf"><br/>
  <br/>
  <label for="i-date">date:</label>
  <input type="date" id="i-date" name="i-date"><br />
  <label for="i-month">month:</label>
  <input type="month" id="i-month" name="i-month"><br />
  <label for="i-week">week:</label>
  <input type="week" id="i-week" name="i-week"><br />
  <label for="i-time">time:</label>
  <input type="time" id="i-time" name="i-time"><br />
  <label for="i-datetime-local">datetime-local:</label>
  <input type="datetime-local" id="i-datetime-local" name="i-datetime-local"><br />
  <br/>
  <label for="i-number">number:</label>
  <input type="number" id="i-number" name="i-number" min="1" max="5"><br />
  <label for="i-range">range:</label>
  <input type="range" id="i-range" name="i-range" min="0" max="50"><br />
  <label for="i-color">color:</label>
  <input type="color" id="i-color" name="i-color" value="#ff0000"><br />
  <br/>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label><br>
  <br>
  <input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label><br>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br>
  <input type="radio" id="other" name="gender" value="other">
  <label for="other">Other</label><br>
  <br>
  <label for="i-file">file:</label>
  <input type="file" id="i-file" name="i-file"><br>
  <label for="i-image">image:</label>
  <input type="image" id="i-image" name="i-image"><br>
  <label for="i-button">button:</label>
  <input type="button" onclick="alert('Hello World!')" value="Click Me!"><br>
  <label for="i-submit-reset">submit, reset:</label>
  <input type="submit" value="Submit">
  <input type="reset">
</form>

<span style="color: red;">&lt;button&gt;</span><br/>
<button type="button">Click Me!</button>

<span style="color: red;">&lt;select&gt;, &lt;optgroup&gt;, &lt;option&gt;</span><br/>
<form action="/action_page.php">
  <label for="cars">Choose a car:</label>
  <select name="cars" id="cars">
    <optgroup label="Swedish Cars">
      <option value="volvo">Volvo</option>
      <option value="saab">Saab</option>
    </optgroup>
    <optgroup label="German Cars">
      <option value="mercedes">Mercedes</option>
      <option value="audi">Audi</option>
    </optgroup>
  </select>
  <br><br>
  <input type="submit" value="Submit">
</form>

<span style="color: red;">&lt;datalist&gt;</span><br/>
<form action="/action_page.php" method="get">
  <label for="browser">Choose your browser from the list:</label>
  <input list="browsers" name="browser" id="browser">
  <datalist id="browsers">
    <option value="Edge"/>
    <option value="Firefox"/>
    <option value="Chrome"/>
    <option value="Opera"/>
    <option value="Safari"/>
  </datalist>
  <input type="submit">
</form>

<span style="color: red;">&lt;textarea&gt;</span><br/>
<form action="/action_page.php">
<label for="w3review">Review of W3Schools:</label>
<textarea id="w3review" name="w3review" rows="4" cols="50">
  At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
  </textarea>
  <br><br>
  <input type="submit" value="Submit">
</form>

<span style="color: red;">&lt;output&gt;</span><br/>
<form oninput="x.value=parseInt(a.value)+parseInt(b.value)">
<input type="range" id="a" value="50">
+<input type="number" id="b" value="25">
=<output name="x" for="a b"></output>
</form>

<span style="color: red;">&lt;progress&gt;</span><br/>
<progress id="file" value="32" max="100"> 32% </progress>

<span style="color: red;">&lt;meter&gt;</span><br/>
<label for="disk_c">Disk usage C:</label>
<meter id="disk_c" value="2" min="0" max="10">2 out of 10</meter>

<span style="color: red;">&lt;fieldset&gt;, &lt;legend&gt;</span><br/>
<form action="/action_page.php">
 <fieldset>
  <legend>Personalia:</legend>
  <label for="fname">First name:</label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name:</label>
  <input type="text" id="lname" name="lname"><br><br>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email"><br><br>
  <label for="birthday">Birthday:</label>
  <input type="date" id="birthday" name="birthday"><br><br>
  <input type="submit" value="Submit">
 </fieldset>
</form>

## 7. 상호작용 요소
<span style="color: red;">&lt;details&gt;, &lt;summary&gt;</span><br/>
<details>
  <summary>Epcot Center</summary>
  <p>Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, award-winning fireworks and seasonal special events.</p>
</details>

<span style="color: red;">&lt;dialog&gt;</span><br/>
<p>This is some text.</p>

<p>This is some text.</p>

<dialog open>This is an open dialog window</dialog>

<p>This is some text.</p>

<p>This is some text.</p>

## 8. 스크립트 요소
<span style="color: red;">&lt;script&gt;</span><br/>

<span style="color: red;">&lt;noscript&gt;</span><br/>
\<noscript\>Sorry, your browser does not support JavaScript!\</noscript\>

<span style="color: red;">&lt;template&gt;</span><br/>