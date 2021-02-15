$UTime = ((get-date).ToUniversalTime()).ToString('yyyy-MM-ddTHH:mm:ss+09:00')


$dateTime = get-date -format "yyyy-MM-dd HH:mm:ss"
cd 'C:\Users\KKOOING\Documents\_8_Git\kkooing.github.io'
git add .
git commit -m $dateTime
git push
pause

(Get-Date -Date "2020-01-01T00:00:00" -AsUTC).KindUtc