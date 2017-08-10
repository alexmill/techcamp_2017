url="http://artii.herokuapp.com/make?text=$1+is+a+Hacker"
cat ./ascii.txt
(curl $url 2> /dev/null) || (./win_curl/curl $url 2> /dev/null)
echo ""