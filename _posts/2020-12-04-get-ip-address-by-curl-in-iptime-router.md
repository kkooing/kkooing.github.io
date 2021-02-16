---
title:      '[bash] curl로 iptime 공유기 로그인, 외부 IP 주소 가져오기'
categories: [bash]
tags:       [bash]
last_modified_at: 2020-12-04T21:17:00+09:00
---
## 0. 주제
 인터넷 접속 없이 curl을 통해 iptime 공유기에 세션방식으로 로그인 하고 외부 IP 주소를 가져온다.<br />

## 1. 서론
 내가 사용하는 iptime 공유기 N704V3에는 기본방식, 세션방식의 두 가지 로그인 인증 방식이 있다. 기본방식을 선택하면 HTTP Basic 인증이 사용되며, 공유기에 로그인 할 필요도 없이 공유기 접속 첫 페이지에 외부 IP가 노출된다. 하지만 세션방식은 별도의 로그인 페이지가 열리고 로그인 이후 외부 IP를 볼 수 있다.<br />

[![로그인 인증 방법 설정](https://1.bp.blogspot.com/-YKlZP6A43RQ/X9Mgy1BOMeI/AAAAAAAAANE/jvtH7lEyWa4tEBh45Iq8EJpffnnLK6ldACLcBGAsYHQ/s0/%25EB%25A1%259C%25EA%25B7%25B8%25EC%259D%25B8%2B%25EC%259D%25B8%25EC%25A6%259D%2B%25EB%25B0%25A9%25EB%25B2%2595%2B%25EC%2584%25A4%25EC%25A0%2595.png)](https://1.bp.blogspot.com/-YKlZP6A43RQ/X9Mgy1BOMeI/AAAAAAAAANE/jvtH7lEyWa4tEBh45Iq8EJpffnnLK6ldACLcBGAsYHQ/s0/%25EB%25A1%259C%25EA%25B7%25B8%25EC%259D%25B8%2B%25EC%259D%25B8%25EC%25A6%259D%2B%25EB%25B0%25A9%25EB%25B2%2595%2B%25EC%2584%25A4%25EC%25A0%2595.png)▲ 로그인 인증 방법 설정

<br />
<div class="separator" style="clear: both; display: block; text-align: center;"><br /><a href="https://1.bp.blogspot.com/-1BCSLqazvFQ/X9MwNxzPjNI/AAAAAAAAAN4/esGx2ALvBrQycaVH8ZALsMu303-r5CaMwCLcBGAsYHQ/s0/%25EA%25B8%25B0%25EB%25B3%25B8%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png"><img alt="" border="0" data-original-height="282" data-original-width="297" src="https://1.bp.blogspot.com/-1BCSLqazvFQ/X9MwNxzPjNI/AAAAAAAAAN4/esGx2ALvBrQycaVH8ZALsMu303-r5CaMwCLcBGAsYHQ/s0/%25EA%25B8%25B0%25EB%25B3%25B8%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png" /></a><br />▲ 기본방식 첫 페이지
</div>
<br />
<div class="separator" style="clear: both; display: block; text-align: center;"><a href="https://1.bp.blogspot.com/-J5AXip5Nn0s/X9MkpetC2QI/AAAAAAAAANg/KXXE26I4uvkiQTK4boEPv3CnraGRYn7YwCLcBGAsYHQ/s0/%25EC%2584%25B8%25EC%2585%2598%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png"><img alt="" border="0" data-original-height="204" data-original-width="297" src="https://1.bp.blogspot.com/-J5AXip5Nn0s/X9MkpetC2QI/AAAAAAAAANg/KXXE26I4uvkiQTK4boEPv3CnraGRYn7YwCLcBGAsYHQ/s0/%25EC%2584%25B8%25EC%2585%2598%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png" /></a><br />▲ 세션방식 첫 페이지
</div>
<br />
▼ 조건<br />
• iptime 공유기<br />
• 세션방식 로그인<br />
• Captcha 없음<br />
<br />
▼ 개인적 환경<br />
• 모델 N704V3<br />
• 펌웨어 12.07.6<br />
<br />

## 2. 본론
브라우저에 기본 게이트웨이 주소(나는 192.168.0.1임.)를 입력하면 아래와 같은 순서로 리다이렉트 된다.<br />
<br />
1. 주소창에 <span style="color: #2b00fe;">192.168.0.1</span> 쓰고 이동<br />
2. <span style="color: #2b00fe;">http://192.168.0.1/login/login.cgi</span> 로 이동<br />
↳ <span style="color: #2b00fe;">http://192.168.0.1/sess-bin/login_session.cgi</span> 로 리다이렉트<br />
3. 아이디, 비밀번호 입력<br />
4. <span style="color: #2b00fe;">http://192.168.0.1/sess-bin/login_handler.cgi</span> 로 이동<br />
↳ <span style="color: #2b00fe;">http://192.168.0.1/sess-bin/login.cgi?</span> 로 리다이렉트<br />

<br />
▼ 로그인 하고 쿠키 가져오기<br />
<pre class="prettyprint linenums lang-bash"><div class="lang">bash</div>curl -s4 'http://192.168.0.1/sess-bin/login_handler.cgi' -H 'Referer: http://192.168.0.1' --data-urlencode 'username=${id}' --data-urlencode '${passwd}' | sed -En "s/^setCookie\('(.*)'\);/\1/p")
</pre>
<code class="prettyprint">${id}</code> : 로그인 아이디<br />
<code class="prettyprint">${pw}</code> : 로그인 비밀번호<br />
<br />
위 코드에서 얻은 쿠키를 아래 코드에서 활용한다.<br />
<br />
▼ 로그인 이후 페이지 가져오기<br />
<pre class="prettyprint linenums lang-bash"><div class="lang">bash</div>curl -s4 'http://192.168.0.1/login/login.cgi?' -H "Cookie: efm_session_id=${cookie}" | sed -En "s,.*동적 IP - 연결됨 - (.*).*,\1,p"
</pre>
<code class="prettyprint">${cookie}</code> : 쿠키<br />
<br />

## 3. 결론
 본문의 코드에서는 curl 로 가져온 html 데이터를 sed 로 파싱하는 과정을 포함하고 있다. 이를 통해 IP주소를 얻을 수 있었다.<br />
<br />
<em>(뭔가 이상함 : 이 방법은 공유기에 로그인 기록이 안 남는것 같다...)</em><br />
<span><!--more--></span><span><!--more--></span><span><!--more--></span>

<div class="separator" style="clear: both;"><a href="https://1.bp.blogspot.com/-unnPYyCU29I/YCsxzxCq9gI/AAAAAAAAAQk/6FN43_Dh2m4WKN63CrcoHtYybY0osErVQCLcBGAsYHQ/s0/%25EB%25B0%2594%25EC%25A7%2580%2528%25EA%25B8%25B0%25EB%25AA%25A8%2529%2B-%2Bswiss%2Blegend%2B-%2BM%252876%2529%2B-%2B%2B-%2Bcot95%2Bpu5.jpg" style="display: block; padding: 1em 0px; text-align: center;"><img alt="" border="0" data-original-height="2048" data-original-width="1536" src="https://1.bp.blogspot.com/-unnPYyCU29I/YCsxzxCq9gI/AAAAAAAAAQk/6FN43_Dh2m4WKN63CrcoHtYybY0osErVQCLcBGAsYHQ/s0/%25EB%25B0%2594%25EC%25A7%2580%2528%25EA%25B8%25B0%25EB%25AA%25A8%2529%2B-%2Bswiss%2Blegend%2B-%2BM%252876%2529%2B-%2B%2B-%2Bcot95%2Bpu5.jpg" /></a></div>
