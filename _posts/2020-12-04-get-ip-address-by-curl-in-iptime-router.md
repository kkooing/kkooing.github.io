---
title:      'curl로 iptime 공유기 공인 IP 주소 가져오기'
categories: [bash]
tags:       [bash, IP, curl, 공유기, iptime]
last_modified_at: 2021-02-22T17:48:19+09:00
toc: true
toc_sticky: true
header:
  teaser: https://1.bp.blogspot.com/-gV8bLJ7y_Bw/YDNHHNFun7I/AAAAAAAAAZQ/xgp2_-xtHZ0183is4dKjDlzfEN8_MHsNwCLcBGAsYHQ/s0/%25EA%25B8%25B0%25EB%25B3%25B8%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png
---
## 0. 주제
curl을 통해 iptime 공유기 공인 IP 주소를 가져온다.

## 1. 서론
우선 인터넷에 연결이 되어 있다면 자신의 공인 IP를 쉘에 불러오는것은 간단하게 할 수 있다.[^IP-addr]

```bash
curl ifconfig.co
curl ifconfig.me
curl icanhazip.com
```

하지만 VPN을 사용하는 환경에서는 이 방법을 사용할 수 없거나 IP를 조회할 때마다 우회를 해야하는 문제가 발생했다. 그래서 나의 경우에는 공유기를 거처 네트워크에 접속되어 있고, 공유기에서도 IP 주소를 확인할 수 있다는 것을 이용하기로 했다.

 내가 사용하는 iptime 공유기 N704V3에는 기본방식, 세션방식의 두 가지 로그인 인증 방식이 있다. 기본방식을 선택하면 HTTP Basic 인증이 사용되며, 공유기에 로그인 할 필요도 없이 공유기 접속 첫 페이지에 외부 IP가 노출된다. 하지만 세션방식은 별도의 로그인 페이지가 열리고 로그인 이후 외부 IP를 볼 수 있다.

 {% include figure image_path="https://1.bp.blogspot.com/-gV8bLJ7y_Bw/YDNHHNFun7I/AAAAAAAAAZQ/xgp2_-xtHZ0183is4dKjDlzfEN8_MHsNwCLcBGAsYHQ/s0/%25EA%25B8%25B0%25EB%25B3%25B8%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png" alt="기본방식 첫 페이지" caption="▲ 기본방식 첫 페이지" %}

 {% include figure image_path="https://1.bp.blogspot.com/-8ttTKvdcdwI/YDNHHKMLEsI/AAAAAAAAAZU/bXg7D74uq-M6YS5uFHwi-7pgVQ_WJLMVQCLcBGAsYHQ/s0/%25EC%2584%25B8%25EC%2585%2598%25EB%25B0%25A9%25EC%258B%259D%2B%25EC%25B2%25AB%2B%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580.png" alt="세션방식 첫 페이지" caption="▲ 세션방식 첫 페이지" %}

기본방식 인증을 선택하면 그냥 `curl '게이트웨이 주소'` 하면 IP 주소를 얻을 수 있겠지만, 그냥 심미적인 이유에서 세션방식이 더 마음에 들었다. (기본방식도 충분 하겠지만 아마도 세션방식이 보안상 더 좋지 않을까?)

 {% include figure image_path="https://1.bp.blogspot.com/-B6jO3BJv9Ec/YDNHHGggDfI/AAAAAAAAAZM/ktTIKeSFt4IY9zEyFVUNIckPkAmhpnNQwCLcBGAsYHQ/s0/%25EB%25A1%259C%25EA%25B7%25B8%25EC%259D%25B8%2B%25EC%259D%25B8%25EC%25A6%259D%2B%25EB%25B0%25A9%25EB%25B2%2595%2B%25EC%2584%25A4%25EC%25A0%2595.png" alt="로그인 인증 방법 설정" caption="▲ 로그인 인증 방법 설정" %}

▼ 조건
* iptime 공유기 (모델 N704V3, 펌웨어 12.07.6)
* 세션방식 로그인
* Captcha 없음

## 2. 본론
브라우저에 기본 게이트웨이 주소(나는 192.168.0.1)를 입력하면 아래와 같은 순서로 리다이렉트 된다.

1. 게이트웨이 주소 *192.168.0.1* 입력<br/>
   1) [이동] *http://192.168.0.1/login/login.cgi*<br/>
   2) [리다이렉트] *http://192.168.0.1/sess-bin/login_session.cgi*
2. 아이디, 비밀번호를 입력하고 로그인<br/>
   1) [이동] *http://192.168.0.1/sess-bin/login_handler.cgi*<br/>
   2) [리다이렉트] *http://192.168.0.1/sess-bin/login.cgi?*

위 과정 2-1[이동]의 주소에 로그인 정보를 넘겨주면 쿠키 정보가 들어있는 페이지를 얻을 수 있다. 원래 안보이는 주소지만 크롬 개발자 도구를 통해 구했다. 결과 페이지를 `sed`로 필터링 해서 쿠키 문자열만 가져올 수도 있다.

▼ 로그인 하고 쿠키 가져오기 (`sed`도 사용)
```bash
curl -s4 'http://192.168.0.1/sess-bin/login_handler.cgi' -H 'Referer: http://192.168.0.1' --data-urlencode 'username=${id}' --data-urlencode '$passwd={pw}' | sed -En "s/^setCookie\('(.*)'\);/\1/p")
```
`${id}` : 로그인 아이디<br/>
`${pw}` : 로그인 비밀번호<br/>

위 코드에서 얻은 쿠키는 세션이 유지되는 동안에 사용할 수 있다. 이번에는 맨 위의 과정 1-1[이동]의 주소를 사용한다. 마찬가지로 `sed`로 필터링 해서 IP 주소만 가져올 수 있다.

▼ 로그인 이후 페이지 가져오기 (`sed`도 사용)
```bash
curl -s4 'http://192.168.0.1/login/login.cgi' -H "Cookie: efm_session_id=${cookie}" | sed -En "s,.*동적 IP - 연결됨 - (.*).*,\1,p"
```
`${cookie}` : 쿠키<br/>

## 3. 결론
이제 타 사이트에 접속하지 않고도 공인 IP를 알 수 있게 되었다. 공유기에 로그인을 할 수 있으니 IP 말고 다른 정보를 조회하는 데에도 유용하게 사용할 수 있을것 같다. 추후에 공유기 제조사에서 펌웨어를 업그레이드하면 이 방법이 소용없을 수도 있지만... 그땐 그냥 기본인증으로 사용해야겠다.

*(의문점: 공유기에 로그인 기록이 안 남는것 같다...)*

## A. 참고
[^IP-addr]: *Tecmint: Linux Howtos, Tutorials & Guides, "4 Ways to Find Server Public IP Address in Linux Terminal", <https://www.tecmint.com/find-linux-server-public-ip-address/>*
