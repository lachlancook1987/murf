exec(open('bt.py').read().split('print("=== 1H')[0])
import math
def half(R,name):
    m=len(R)//2
    for lab,x in (('1st half',R[:m]),('2nd half',R[m:])): print(f"   {name} {lab}: n={len(x)} avg={st.mean(x):+.2f}%")
def se(R): return st.stdev(R)/math.sqrt(len(R))
# order trades chronologically requires timestamps; approximate by rerunning per time-split instead
def run_t(iv,sig,trail,maxh,fee_in,lo,hi_):
    R=[]
    for a,d in D.items():
        c=d.get(str(iv))
        if not c or len(c)<80: continue
        cl=[x[4] for x in c];ctx=dict(c=c,cl=cl,e20=ema(cl,20),e50=ema(cl,50),at=atr(c),rs=rsi(cl))
        i=60
        while i<len(c)-2:
            if sig(ctx,i):
                r,j=sim(c,i+1,trail(ctx,i),maxh,fee_in)
                if lo<=i/len(c)<hi_:R.append(r)
                i=j+1
            else:i+=1
    return R
R=run(240,brk,atrt(3),60,0.4);print('4h brk 3ATR/60 avg',round(st.mean(R),3),'SE',round(se(R),3))
for lo,hi_ in((0,.5),(.5,1)):
    x=run_t(240,brk,atrt(3),60,0.4,lo,hi_);print(' period',lo,hi_,'n',len(x),'avg',round(st.mean(x),2))
rep("4h brk 3ATR/60, maker both sides (0.4/0.4 approx)",[r+0.4 for r in R])
rep("4h brk 3ATR/60, taker both (0.8/0.8)",[r-0.4 for r in R])
# BTC context
b=D.get('XBT') or D.get('XXBT')
c=D['XBT'][ '1440'] if 'XBT' in D and '1440' in D['XBT'] else None
if c:print('BTC 720d',c[0][4],'->',c[-1][4],'; last 120d',c[-120][4],'->',c[-1][4])
# alt breadth: median 120d return over universe
r120=[d['1440'][-1][4]/d['1440'][-120][4]-1 for d in D.values() if '1440' in d and len(d['1440'])>=120]
print('median alt 120d return',round(st.median(r120)*100,1),'%')
