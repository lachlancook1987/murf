import json,time,urllib.request
def get(u):
    for i in range(4):
        try: return json.load(urllib.request.urlopen(u,timeout=30))
        except Exception as e: time.sleep(2)
    return None
t=get('https://api.kraken.com/0/public/Ticker')['result']
ap=get('https://api.kraken.com/0/public/AssetPairs')['result']
u=[]
for k,v in t.items():
    a=ap.get(k)
    if not a or a.get('quote')!='ZUSD' and a.get('quote')!='USD': continue
    if a['wsname'].split('/')[0] in ('USDT','USDC','DAI','EUR','GBP','AUD','PYUSD','USD1','EURT','TUSD','USDG','RLUSD','EURR','USDQ','AUDX','EURQ') or a.get('status')!='online': continue
    vol=float(v['v'][1])*float(v['c'][0])
    if vol>150000: u.append((vol,k,a['altname']))
u.sort(reverse=True); u=u[:120]
print(len(u))
out={}
for vol,k,alt in u:
    d={}
    for iv in (60,240,1440):
        r=get(f'https://api.kraken.com/0/public/OHLC?pair={k}&interval={iv}')
        if r and not r['error']:
            d[iv]=[[float(x) for x in c[:7]] for c in list(r['result'].values())[0][:-1]]
    out[alt]=d; time.sleep(0.4)
json.dump(out,open('ohlc.json','w'))
print('done',len(out))
