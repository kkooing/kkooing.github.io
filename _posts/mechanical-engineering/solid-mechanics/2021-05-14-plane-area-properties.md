---
title           : "단면치"
tags            : []
use_math        : true
thumbnail       : "https://gist.githubusercontent.com/kkooing/7b950562f612080b8476d555dfb9db14/raw/ec33cbbd2b994f4b8cd161e84b414a6d7274b187/%25EB%258B%25A8%25EB%25A9%25B4%25EC%25B9%2598-%25EC%2582%25AC%25EA%25B0%2581%25ED%2598%2595.svg"
---
\\(\displaystyle \bar x, \, \bar y \\) : 도심 거리(외접선으로 부터)  
\\(\displaystyle I_x, \, I_y \\) : 관성모멘트(도심 기준 )  
\\(\displaystyle I_{x'}, \, I_{y'} \\) : 관성모멘트(외접선 기준)  
\\(\displaystyle I_P = I_x + I_y \\) : 극관성모멘트
\\(\displaystyle I_{xy} \\) : 단면상승모멘트


<div class="sx nw">
<table>
  <thead>
   <tr>
     <th>그림</th>
     <th>넓이</th>
     <th colspan="2">도심</th>
     <th markdown=span>도심 기준<br/>(\\( I_x\\), \\( I_y\\))</th>
     <th markdown=span>외접선 기준<br/>(\\( I_{x'}\\), \\( I_{y'}\\))</th>
   </tr>
  </thead>
  <tbody>
    <tr>
      <th colspan="6">사각형</th>
    </tr>
    <tr>
      <td rowspan="2">{% include figure image_path="https://gist.githubusercontent.com/kkooing/7b950562f612080b8476d555dfb9db14/raw/ec33cbbd2b994f4b8cd161e84b414a6d7274b187/%25EB%258B%25A8%25EB%25A9%25B4%25EC%25B9%2598-%25EC%2582%25AC%25EA%25B0%2581%25ED%2598%2595.svg" alt="사각형" style="width: 200px;"%}</td>
      <td rowspan="2" markdown=span>\\(\displaystyle bh\\)</td>
      <th markdown=span>\\( x \\)</th>
      <td markdown=span>\\(\displaystyle \frac{b}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{3}\\)</td>
    </tr>
    <tr>
      <th markdown=span>\\( y \\)</th>
      <td markdown=span>\\(\displaystyle \frac{h}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{3}\\)</td>
    </tr>

    <tr>
      <th colspan="6">중실원</th>
    </tr>
    <tr>
      <td rowspan="2">{% include figure image_path="https://gist.githubusercontent.com/kkooing/7b950562f612080b8476d555dfb9db14/raw/ec33cbbd2b994f4b8cd161e84b414a6d7274b187/%25EB%258B%25A8%25EB%25A9%25B4%25EC%25B9%2598-%25EC%25A4%2591%25EC%258B%25A4%25EC%259B%2590.svg" alt="중실원" style="width: 200px;"%}</td>
      <td rowspan="2" markdown=span>\\(\displaystyle bh\\)</td>
      <th markdown=span>\\( x \\)</th>
      <td markdown=span>\\(\displaystyle \frac{b}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{3}\\)</td>
    </tr>
    <tr>
      <th markdown=span>\\( y \\)</th>
      <td markdown=span>\\(\displaystyle \frac{h}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{3}\\)</td>
    </tr>

    <tr>
      <th colspan="6">중공원</th>
    </tr>
    <tr>
      <td rowspan="2">{% include figure image_path="https://gist.githubusercontent.com/kkooing/7b950562f612080b8476d555dfb9db14/raw/ec33cbbd2b994f4b8cd161e84b414a6d7274b187/%25EB%258B%25A8%25EB%25A9%25B4%25EC%25B9%2598-%25EC%25A4%2591%25EA%25B3%25B5%25EC%259B%2590.svg" alt="중공원" style="width: 200px;"%}</td>
      <td rowspan="2" markdown=span>\\(\displaystyle bh\\)</td>
      <th markdown=span>\\( x \\)</th>
      <td markdown=span>\\(\displaystyle \frac{b}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{3}\\)</td>
    </tr>
    <tr>
      <th markdown=span>\\( y \\)</th>
      <td markdown=span>\\(\displaystyle \frac{h}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{3}\\)</td>
    </tr>

    <tr>
      <th colspan="6">직각 삼각형</th>
    </tr>
    <tr>
      <td rowspan="2">{% include figure image_path="https://gist.githubusercontent.com/kkooing/7b950562f612080b8476d555dfb9db14/raw/ec33cbbd2b994f4b8cd161e84b414a6d7274b187/%25EB%258B%25A8%25EB%25A9%25B4%25EC%25B9%2598-%25EC%25A7%2581%25EA%25B0%2581%25EC%2582%25BC%25EA%25B0%2581%25ED%2598%2595.svg" alt="직각 삼각형" style="width: 200px;"%}</td>
      <td rowspan="2" markdown=span>\\(\displaystyle bh\\)</td>
      <th markdown=span>\\( x \\)</th>
      <td markdown=span>\\(\displaystyle \frac{b}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{bh^3}{3}\\)</td>
    </tr>
    <tr>
      <th markdown=span>\\( y \\)</th>
      <td markdown=span>\\(\displaystyle \frac{h}{2}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{12}\\)</td>
      <td markdown=span>\\(\displaystyle \frac{b^3h}{3}\\)</td>
    </tr>
  </tbody>
</table>
</div>
