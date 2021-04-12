import os
import urllib.request
import urllib.request

global_proxy = None

def oscheck():
    if "http_proxy" in [x.lower() for x in list(os.environ.keys())] or "https_proxy" in [x.lower() for x in list(environ.keys())]:
        global_proxy = {
            "http": os.environ["http_proxy"].replace("http://", "").replace("/", "")
        }
        if "https_proxy" in [x.lower() for x in list(os.environ.keys())]:
            global_proxy["https"] = os.environ["https_proxy"].replace("https://", "").replace("/", "")
        else:
            global_proxy["https"] = os.environ["http_proxy"].replace("https://", "").replace("/", "")
    else:
        global_proxy = None

def proxycheck():
    url = 'http://standards-oui.ieee.org'
    urllib.request.urlretrieve(url, save_name)


urls = [
    "http://standards-oui.ieee.org/oui/oui.csv",
    "http://standards-oui.ieee.org/oui28/mam.csv",
    "http://standards-oui.ieee.org/oui36/oui36.csv",
    "http://standards-oui.ieee.org/iab/iab.csv",
    "http://standards-oui.ieee.org/cid/cid.csv",
    "http://standards-oui.ieee.org/ethertype/eth.csv",
    "http://standards-oui.ieee.org/manid/manid.csv",
    "http://standards-oui.ieee.org/bopid/opid.csv"
]

PROXIES = {
    'http': 'http://10.151.114.10:8080',
    'https': 'https://10.151.114.10:8080',
    'ftp': 'ftp://10.151.114.10:8080'
}

def setup_proxy():
    proxy = urllib.request.ProxyHandler(PROXIES)
    opener = urllib.request.build_opener(proxy)
    urllib.request.install_opener(opener)

if __name__ == '__main__':
    setup_proxy()

    for url in urls:
        strs = url.split("/")
        fname = strs[len(strs)-1]
        save_name = fname
        print (url)
        urllib.request.urlretrieve(url, save_name)
