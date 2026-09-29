import json,random,statistics as st
D=json.load(open('ohlc.json'))
random.seed(1)
def ema(x,n):
    k=2/(n+1);o=[x[0]]
    for v in x[1:]:o.append(v*k+o[-1]*(1-k))
    return o
def atr(c,n=14):
    tr=[0]+[max(c[i][2]-c[i][3],abs(c[i][2]-c[i-1][4]),abs(c[i][3]-c[i-1][4])) for i in range(1,len(c))]
    o=[0]*len(c)
    for i in range(n,len(c)):o[i]=sum(tr[i-n+1:i+1])/n
    return o
def rsi(cl,n=14):
    o=[50]*len(cl)
    for i in range(n,len(cl)):
        g=sum(max(cl[j]-cl[j-1],0) for j in range(i-n+1,i+1));l=sum(max(cl[j-1]-cl[j],0) for j in range(i-n+1,i+1))
        o[i]=100 if l==0 else 100-100/(1+g/l)
    return o
def sim(c,i,trailf,maxh,fee_in,fee_out=0.8,target=None,slip=0.1):
    """enter at open of bar i; trailf=trail fraction (float)"""
    p0=c[i][1]*(1+slip/100);hi=p0;stop=p0*(1-trailf)
    for j in range(i,min(i+maxh,len(c))):
        o,h,l,cl=c[j][1:5]
        if j>i and l<=stop: return (min(stop,o)/p0-1)*100-fee_in-fee_out,j
        if j==i and l<=stop: return (stop/p0-1)*100-fee_in-fee_out,j
        if target and h>=p0*(1+target): return target*100-fee_in-0.4,j
        hi=max(hi,h);stop=max(stop,hi*(1-trailf))
    return (c[min(i+maxh,len(c))-1][4]/p0-1)*100-fee_in-fee_out,min(i+maxh,len(c))-1
def run(iv,sig,trail,maxh,fee_in,target=None,rand=False):
    R=[]
    for a,d in D.items():
        c=d.get(str(iv))
        if not c or len(c)<80: continue
        cl=[x[4] for x in c];ctx=dict(c=c,cl=cl,e20=ema(cl,20),e50=ema(cl,50),at=atr(c),rs=rsi(cl))
        i=60;
        while i<len(c)-2:
            ok=sig(ctx,i)
            if rand: ok=random.random()<0.02
            if ok:
                tf=trail(ctx,i)
                r,j=sim(c,i+1,tf,maxh,fee_in,0.8,target)
                R.append(r);i=j+1
            else:i+=1
    return R
def rep(name,R):
    if not R: print(name,'no trades');return
    w=[x for x in R if x>0];l=[x for x in R if x<=0]
    pf=sum(w)/-sum(l) if l and sum(l) else 9
    print(f"{name:52s} n={len(R):4d} win={len(w)/len(R)*100:4.1f}% avg={st.mean(R):+.2f}% med={st.median(R):+.2f}% avgW={st.mean(w) if w else 0:+.2f} avgL={st.mean(l) if l else 0:+.2f} PF={pf:.2f}")
# signals
def cur(x,i):
    c=x['c'];cl=x['cl']
    if i<30:return False
    hh=max(k[2] for k in c[i-23:i+1]);vol=sum(k[6]*k[4] for k in c[i-23:i+1])
    return cl[i]/cl[i-1]-1>.03 and cl[i]/cl[i-4]-1>.05 and cl[i]>=hh*.985 and cl[i]>cl[i-1]>cl[i-2] and c[i][2]>=max(k[2] for k in c[i-23:i]) and vol>50000
def brk(x,i):
    c=x['c']
    if i<25:return False
    hh=max(k[2] for k in c[i-20:i]);av=sum(k[6] for k in c[i-20:i])/20
    return x['cl'][i]>hh and c[i][6]>2*av and x['cl'][i]>x['e50'][i]
def pull(x,i):
    return x['e20'][i]>x['e50'][i]>x['e50'][i-5] and x['cl'][i]>x['e50'][i] and x['rs'][i]<42 and x['cl'][i]<x['e20'][i]*1.01
fix=lambda p:(lambda x,i:p)
atrt=lambda m:(lambda x,i:min(.15,max(.02,m*x['at'][i]/x['cl'][i])))
print("=== 1H, current-style momentum chase (taker in/out 0.8/0.8)")
rep("current sig, 2.5% trail, 24h max",run(60,cur,fix(.025),24,0.8))
rep("current sig, 2.5% trail + T1 3% limit",run(60,cur,fix(.025),24,0.8,0.03))
rep("  random entries same exit (baseline)",run(60,cur,fix(.025),24,0.8,rand=True))
rep("current sig, 2.5% trail, ZERO fees",[r+1.6 for r in run(60,cur,fix(.025),24,0.8)])
rep("current sig, ATR3x trail, 24h max",run(60,cur,atrt(3),24,0.8))
print("=== 4H swing (maker-in 0.4 / taker-out 0.8)")
rep("4h breakout, 2.5xATR trail, 30 bars",run(240,brk,atrt(2.5),30,0.4))
rep("4h breakout, 3xATR trail, 60 bars",run(240,brk,atrt(3),60,0.4))
rep("4h pullback-in-uptrend, 2.5xATR, 30 bars",run(240,pull,atrt(2.5),30,0.4))
rep("4h pullback-in-uptrend, 3xATR, 60 bars",run(240,pull,atrt(3),60,0.4))
rep("  random 4h, 2.5xATR, 30 bars (baseline)",run(240,brk,atrt(2.5),30,0.4,rand=True))
rep("  random 4h, 3xATR, 60 bars (baseline)",run(240,brk,atrt(3),60,0.4,rand=True))
print("=== 1D swing")
rep("1d breakout, 3xATR trail, 20 bars",run(1440,brk,atrt(3),20,0.4))
rep("1d pullback-in-uptrend, 3xATR, 20 bars",run(1440,pull,atrt(3),20,0.4))
rep("  random 1d, 3xATR, 20 bars (baseline)",run(1440,brk,atrt(3),20,0.4,rand=True))
import collections
for iv in (60,240,1440):
    n=[len(d[str(iv)]) for d in D.values() if str(iv) in d];print(iv,'bars median',st.median(n))
