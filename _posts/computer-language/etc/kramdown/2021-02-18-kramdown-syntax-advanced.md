---
title           : "kramdown 문법 심화"
tags            : [kramdown, markdown]
thumbnail       : 
---

`블록 요소`를 명시적으로 감싸려면 요소의 앞뒤로 `빈 줄`, `^`, `IAL`을 사용한다. 하지만 예외로 `헤더(\<h\>, #...)`, `코드 블록`, `정의 목록(\<dl\>)`, `표(\<table\>)`는 불가능하다.
## 이스케이프

| 문자 | 이름 |
|:-|:-|
|\\ |backslash|
|\.|period|
|\*|asterisk|
|\_|underscore|
|\+|plus|
|\-|minus|
|\=|equal sign|
|\`|back tick|
|\()[]{}<>|left and right parens/brackets/braces/angle brackets|
|\#|hash|
|\!|bang|
|\<<|left guillemet|
|\>>|right guillemet|
|\:|colon|
|\||pipe|
|\"|double quote|
|\'|single quote|
|\$|dollar sign|

