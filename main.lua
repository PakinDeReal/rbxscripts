return (function()local lol_you_have_to_stop_trying_to_deobfuscatelIIIIlIl = "\108\111\108\32\121\111\117\32\104\97\118\101\32\116\111\32\115\116\111\112\32\116\114\121\105\110\103\32\116\111\32\100\101\111\98\102\117\115\99\97\116\101";local lol_you_have_to_stop_trying_to_deobfuscatelIIIIlIl = "\108\111\108\32\121\111\117\32\104\97\118\101\32\116\111\32\115\116\111\112\32\116\114\121\105\110\103\32\116\111\32\100\101\111\98\102\117\115\99\97\116\101";local lol_you_have_to_stop_trying_to_deobfuscatelIIIIlIl = "\108\111\108\32\121\111\117\32\104\97\118\101\32\116\111\32\115\116\111\112\32\116\114\121\105\110\103\32\116\111\32\100\101\111\98\102\117\115\99\97\116\101";local lol_you_have_to_stop_trying_to_deobfuscatelIIllllI=47;local lol_you_have_to_stop_trying_to_deobfuscatelIIlllIl=298;local lol_you_have_to_stop_trying_to_deobfuscatelIIlllII=3;local lol_you_have_to_stop_trying_to_deobfuscatelIIlIllI=function(a)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';a=string.gsub(a,'[^'..b..'=]','')return a:gsub('.',function(c)if c=='='then return''end;local d,e='',b:find(c)-1;for f=6,1,-1 do d=d..(e%2^f-e%2^(f-1)>0 and'1'or'0')end;return d end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(c)if#c~=8 then return''end;local g=0;for f=1,8 do g=g+(c:sub(f,f)=='1'and 2^(8-f)or 0)end;return string.char(g)end)end;local lol_you_have_to_stop_trying_to_deobfuscatelIIlllIl=45;local lol_you_have_to_stop_trying_to_deobfuscatelIIlIlIl=(function()local function a(b)local c={}for d=0,255 do c[d]={}end;c[0][0]=b[1]*255;local e=1;for f=0,7 do for d=0,e-1 do for g=0,e-1 do local h=c[d][g]-b[1]*e;c[d][g+e]=h+b[2]*e;c[d+e][g]=h+b[3]*e;c[d+e][g+e]=h+b[4]*e end end;e=e*2 end;return c end;local i=a{0,1,1,0}local function j(self,k)local l,d,g=self.S,self.i,self.j;local m={}local n=string.char;for o=1,k do d=(d+1)%256;g=(g+l[d])%256;l[d],l[g]=l[g],l[d]m[o]=n(l[(l[d]+l[g])%256])end;self.i,self.j=d,g;return table.concat(m)end;local function p(self,q)local r=j(self,#q)local s={}local t=string.byte;local n=string.char;for d=1,#q do s[d]=n(i[t(q,d)][t(r,d)])end;return table.concat(s)end;local function u(self,v)local l=self.S;local g,w=0,#v;local t=string.byte;for d=0,255 do g=(g+l[d]+t(v,d%w+1))%256;l[d],l[g]=l[g],l[d]end end;function new(v)local l={}local s={S=l,i=0,j=0,generate=j,cipher=p,schedule=u}for d=0,255 do l[d]=d end;if v then s:schedule(v)end;return s end;return new end)();local fev=getfenv or function()return _ENV end;local lol_you_have_to_stop_trying_to_deobfuscatelIIlIlII=(function()if not bit then local bit_=nil pcall(function()bit_=require('bit') end)bit=bit_ end local bit=bit or bit32 or(function()local a={_TYPE='module',_NAME='bit.numberlua',_VERSION='0.3.1.20120131'}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return''end;F=true;E=-E end;w=z(w,16^E-1)return('%0'..E..(F and'X'or'x')):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a end)()local unpack=table.unpack or unpack;local a3;local a4;local a5;local a6=50;local a7={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local a8={[0]='ABC','ABx','ABC','ABC','ABC','ABx','ABC','ABx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','AsBx','ABC','ABC','ABC','ABx','ABC'}local a9={[0]={b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgR'},{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgU'},{b='OpArgR',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgN',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgN',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgU',c='OpArgN'}}local function aa(ab,s,e,d)local ac=0;for i=s,e,d do ac=ac+string.byte(ab,i,i)*256^(i-s)end;return ac end;local function ad(ae,af,ag,ah)local ai=(-1)^bit.rshift(ah,7)local aj=bit.rshift(ag,7)+bit.lshift(bit.band(ah,0x7F),1)local ak=ae+bit.lshift(af,8)+bit.lshift(bit.band(ag,0x7F),16)local al=1;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7F then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-127)*(1+al/2^23)end;local function am(ae,af,ag,ah,an,ao,ap,aq)local ai=(-1)^bit.rshift(aq,7)local aj=bit.lshift(bit.band(aq,0x7F),4)+bit.rshift(ap,4)local ak=bit.band(ap,0x0F)*2^48;local al=1;ak=ak+ao*2^40+an*2^32+ah*2^24+ag*2^16+af*2^8+ae;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7FF then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-1023)*(al+ak/2^52)end;local function ar(ab,s,e)return aa(ab,s,e-1,1)end;local function as(ab,s,e)return aa(ab,e-1,s,-1)end;local function at(ab,s)return ad(string.byte(ab,s,s+3))end;local function au(ab,s)local ae,af,ag,ah=string.byte(ab,s,s+3)return ad(ah,ag,af,ae)end;local function av(ab,s)return am(string.byte(ab,s,s+7))end;local function aw(ab,s)local ae,af,ag,ah,an,ao,ap,aq=string.byte(ab,s,s+7)return am(aq,ap,ao,an,ah,ag,af,ae)end;local ax={[4]={little=at,big=au},[8]={little=av,big=aw}}local function ay(S)local az=S.index;local aA=string.byte(S.source,az,az)S.index=az+1;return aA end;local function aB(S,aC)local aD=S.index+aC;local aE=string.sub(S.source,S.index,aD-1)S.index=aD;return aE end;local function aF(S)local aC=S:s_szt()local aE;if aC~=0 then aE=string.sub(aB(S,aC),1,-2)end;return aE end;local function aG(aC,aH)return function(S)local aD=S.index+aC;local aI=aH(S.source,S.index,aD)S.index=aD;return aI end end;local function aJ(aC,aH)return function(S)local aK=aH(S.source,S.index)S.index=S.index+aC;return aK end end;local function aL(S)local aM=S:s_int()local aN={}for i=1,aM do local aO=S:s_ins()local aP=bit.band(aO,0x3F)local aQ=a8[aP]local aR=a9[aP]local aS={value=aO,op=a7[aP],A=bit.band(bit.rshift(aO,6),0xFF)}if aQ=='ABC'then aS.B=bit.band(bit.rshift(aO,23),0x1FF)aS.C=bit.band(bit.rshift(aO,14),0x1FF)aS.is_KB=aR.b=='OpArgK'and aS.B>0xFF;aS.is_KC=aR.c=='OpArgK'and aS.C>0xFF elseif aQ=='ABx'then aS.Bx=bit.band(bit.rshift(aO,14),0x3FFFF)aS.is_K=aR.b=='OpArgK'elseif aQ=='AsBx'then aS.sBx=bit.band(bit.rshift(aO,14),0x3FFFF)-131071 end;aN[i]=aS end;return aN end;local function aT(S)local aM=S:s_int()local aU={}for i=1,aM do local aV=ay(S)local k;if aV==1 then k=ay(S)~=0 elseif aV==3 then k=S:s_num()elseif aV==4 then k=aF(S)end;aU[i]=k end;return aU end;local function aW(S,ab)local aM=S:s_int()local aX={}for i=1,aM do aX[i]=a5(S,ab)end;return aX end;local function aY(S)local aM=S:s_int()local aZ={}for i=1,aM do aZ[i]=S:s_int()end;return aZ end;local function a_(S)local aM=S:s_int()local b0={}for i=1,aM do b0[i]={varname=aF(S),startpc=S:s_int(),endpc=S:s_int()}end;return b0 end;local function b1(S)local aM=S:s_int()local b2={}for i=1,aM do b2[i]=aF(S)end;return b2 end;function a5(S,b3)local b4={}local ab=aF(S)or b3;b4.source=ab;S:s_int()S:s_int()b4.numupvals=ay(S)b4.numparams=ay(S)ay(S)ay(S)b4.code=aL(S)b4.const=aT(S)b4.subs=aW(S,ab)b4.lines=aY(S)a_(S)b1(S)for _,v in ipairs(b4.code)do if v.is_K then v.const=b4.const[v.Bx+1]else if v.is_KB then v.const_B=b4.const[v.B-0xFF]end;if v.is_KC then v.const_C=b4.const[v.C-0xFF]end end end;return b4 end;function a3(ab)local b5;local b6;local b7;local b8;local b9;local ba;local bb;local bc={index=1,source=ab}assert(aB(bc,4)=='\27Lua','invalid Lua signature')assert(ay(bc)==0x51,'invalid Lua version')assert(ay(bc)==0,'invalid Lua format')b6=ay(bc)~=0;b7=ay(bc)b8=ay(bc)b9=ay(bc)ba=ay(bc)bb=ay(bc)~=0;b5=b6 and ar or as;bc.s_int=aG(b7,b5)bc.s_szt=aG(b8,b5)bc.s_ins=aG(b9,b5)if bb then bc.s_num=aG(ba,b5)elseif ax[ba]then bc.s_num=aJ(ba,ax[ba][b6 and'little'or'big'])else error('unsupported float size')end;return a5(bc,'@virtual')end;local function bd(be,bf)for i,bg in pairs(be)do if bg.index>=bf then bg.value=bg.store[bg.index]bg.store=bg;bg.index='value'be[i]=nil end end end;local function bh(be,bf,bi)local bj=be[bf]if not bj then bj={index=bf,store=bi}be[bf]=bj end;return bj end;local function bk(...)return select('#',...),{...}end;local function bl(bm,bn)local ab=bm.source;local bo=bm.lines[bm.pc-1]local b3,bp,bq=string.match(bn,'^(.-):(%d+):%s+(.+)')local br='%s:%i: [%s:%i] %s'bo=bo or'0'b3=b3 or'?'bp=bp or'0'bq=bq or bn;error(string.format(br,ab,bo,b3,bp,bq),0)end;local function bs(bm)local aN=bm.code;local bt=bm.subs;local bu=bm.env;local bv=bm.upvals;local bw=bm.varargs;local bx=-1;local by={}local bi=bm.stack;local bz=bm.pc;while true do local bA=aN[bz]local aP=bA.op;bz=bz+1;if aP<18 then if aP<8 then if aP<3 then if aP<1 then for i=bA.A,bA.B do bi[i]=nil end elseif aP>1 then local bg=bv[bA.B]bi[bA.A]=bg.store[bg.index]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB+bC end elseif aP>3 then if aP<6 then if aP>4 then local A=bA.A;local B=bA.B;local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[A+1]=bi[B]bi[A]=bi[B][bf]else bi[bA.A]=bu[bA.const]end elseif aP>6 then local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[bA.A]=bi[bA.B][bf]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB-bC end else bi[bA.A]=bi[bA.B]end elseif aP>8 then if aP<13 then if aP<10 then bu[bA.const]=bi[bA.A]elseif aP>10 then if aP<12 then local A=bA.A;local B=bA.B;local C=bA.C;local bD;local bE,bF;if B==0 then bD=bx-A else bD=B-1 end;bE,bF=bk(bi[A](unpack(bi,A+1,A+bD)))if C==0 then bx=A+bE-1 else bE=C-1 end;for i=1,bE do bi[A+i-1]=bF[i]end else local bg=bv[bA.B]bg.store[bg.index]=bi[bA.A]end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB*bC end elseif aP>13 then if aP<16 then if aP>14 then local A=bA.A;local B=bA.B;local bD;if B==0 then bD=bx-A else bD=B-1 end;bd(by,0)return bk(bi[A](unpack(bi,A+1,A+bD)))else local bf,bG;if bA.is_KB then bf=bA.const_B else bf=bi[bA.B]end;if bA.is_KC then bG=bA.const_C else bG=bi[bA.C]end;bi[bA.A][bf]=bG end elseif aP>16 then bi[bA.A]={}else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB/bC end else bi[bA.A]=bA.const end else local A=bA.A;local bH=bi[A+2]local bf=bi[A]+bH;local bI=bi[A+1]local bJ;if bH==math.abs(bH)then bJ=bf<=bI else bJ=bf>=bI end;if bJ then bi[bA.A]=bf;bi[bA.A+3]=bf;bz=bz+bA.sBx end end elseif aP>18 then if aP<28 then if aP<23 then if aP<20 then bi[bA.A]=#bi[bA.B]elseif aP>20 then if aP<22 then local A=bA.A;local B=bA.B;local bK={}local aM;if B==0 then aM=bx-A+1 else aM=B-1 end;for i=1,aM do bK[i]=bi[A+i-1]end;bd(by,0)return aM,bK else local aE=bi[bA.B]for i=bA.B+1,bA.C do aE=aE..bi[i]end;bi[bA.A]=aE end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB%bC end elseif aP>23 then if aP<26 then if aP>24 then bd(by,bA.A)else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB==bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 end elseif aP>26 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB^bC end else bi[bA.A]=bA.B~=0;if bA.C~=0 then bz=bz+1 end end elseif aP>28 then if aP<33 then if aP<30 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<=bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 elseif aP>30 then if aP<32 then local aX=bt[bA.Bx+1]local bL=aX.numupvals;local bM;if bL~=0 then bM={}for i=1,bL do local bN=aN[bz+i-1]if bN.op==a7[0]then bM[i-1]=bh(by,bN.B,bi)elseif bN.op==a7[4]then bM[i-1]=bv[bN.B]end end;bz=bz+bL end;bi[bA.A]=a4(aX,bu,bM)else local A=bA.A;local B=bA.B;if not bi[B]==(bA.C~=0)then bz=bz+1 else bi[A]=bi[B]end end else bi[bA.A]=-bi[bA.B]end elseif aP>33 then if aP<36 then if aP>34 then local A=bA.A;local aM=bA.B;if aM==0 then aM=bw.size;bx=A+aM-1 end;for i=1,aM do bi[A+i-1]=bw.list[i]end else local A=bA.A;local bO,bI,bH;bO=assert(tonumber(bi[A]),'`for` initial value must be a number')bI=assert(tonumber(bi[A+1]),'`for` limit must be a number')bH=assert(tonumber(bi[A+2]),'`for` step must be a number')bi[A]=bO-bH;bi[A+1]=bI;bi[A+2]=bH;bz=bz+bA.sBx end elseif aP>36 then local A=bA.A;local C=bA.C;local aM=bA.B;local bP=bi[A]local bQ;if aM==0 then aM=bx-A end;if C==0 then C=bA[bz].value;bz=bz+1 end;bQ=(C-1)*a6;for i=1,aM do bP[i+bQ]=bi[A+i]end else bi[bA.A]=not bi[bA.B]end else if not bi[bA.A]==(bA.C~=0)then bz=bz+1 end end else local A=bA.A;local aH=bi[A]local bR=bi[A+1]local bf=bi[A+2]local bS=A+3;local bK;bi[bS+2]=bf;bi[bS+1]=bR;bi[bS]=aH;bK={aH(bR,bf)}for i=1,bA.C do bi[bS+i-1]=bK[i]end;if bi[bS]~=nil then bi[A+2]=bi[bS]else bz=bz+1 end end else bz=bz+bA.sBx end;bm.pc=bz end end;function a4(bR,bu,b2)local bT=bR.code;local bU=bR.subs;local bV=bR.lines;local bW=bR.source;local bX=bR.numparams;local function bY(...)local bi={}local bZ={}local b_=0;local c0,c1=bk(...)local bm;local c2,bn,bK;for i=1,bX do bi[i-1]=c1[i]end;if bX<c0 then b_=c0-bX;for i=1,b_ do bZ[i]=c1[bX+i]end end;bm={varargs={list=bZ,size=b_},code=bT,subs=bU,lines=bV,source=bW,env=bu,upvals=b2,stack=bi,pc=1}c2,bn,bK=pcall(bs,bm,...)if c2 then return unpack(bK,1,bn)else bl(bm,bn)end;return end;return bY end;return function(c3,bu)return a4(a3(c3),bu or fev(0))end end)();local lol_you_have_to_stop_trying_to_deobfuscatelIIllIll='\101\108\73\57\77\88\78\110\76\49\115\108\85\81\61\61';local lol_you_have_to_stop_trying_to_deobfuscatelIIlIIIl="\109\89\71\113\67\83\80\55\78\81\105\87\89\66\90\56\116\72\65\56\89\102\100\51\74\71\113\79\85\51\57\111\82\70\49\103\43\88\88\54\103\107\54\49\65\80\97\83\110\77\73\115\103\107\97\80\117\107\81\49\88\86\105\77\48\105\101\122\67\87\98\48\112\105\66\68\68\112\74\67\73\84\73\101\49\54\121\98\70\114\57\79\67\102\110\47\80\121\50\82\82\65\112\57\90\106\100\54\69\74\97\103\112\118\109\55\68\82\74\65\116\82\120\65\66\86\84\97\110\47\81\66\103\54\51\78\104\103\67\79\79\43\81\48\98\113\114\83\122\103\100\122\116\83\99\83\73\82\82\98\90\43\57\66\103\106\70\43\107\49\65\113\121\121\52\88\98\115\67\97\85\43\55\88\120\82\107\50\120\113\83\78\120\90\86\69\117\51\66\43\79\109\114\83\115\52\117\74\74\50\57\102\111\73\119\50\112\98\88\122\52\114\108\103\83\49\101\101\66\72\74\49\83\88\106\109\71\89\55\122\101\49\73\49\120\66\114\73\47\101\57\83\54\109\56\102\90\118\86\89\65\99\80\56\65\106\73\87\101\105\80\84\43\104\105\97\56\74\122\120\120\103\78\89\115\75\106\117\114\118\87\83\51\51\53\70\81\119\80\114\111\113\113\53\80\114\47\121\49\50\80\50\119\86\111\116\99\108\122\120\119\97\120\115\52\105\118\101\88\70\66\118\70\65\89\90\69\83\56\55\53\72\81\50\120\106\52\114\90\119\97\113\88\115\99\72\106\50\101\57\68\85\75\67\69\52\50\81\112\71\98\106\79\113\118\107\81\82\108\55\88\72\122\55\120\54\78\118\55\113\90\51\88\80\68\117\74\67\79\118\52\81\66\85\74\106\81\50\75\53\81\69\76\72\109\108\106\105\112\73\100\99\104\111\99\86\102\56\115\122\112\112\101\43\67\103\52\103\106\107\104\65\78\102\112\76\99\71\71\53\52\66\79\121\82\112\90\87\111\107\52\101\107\56\121\65\50\109\71\113\101\118\56\110\104\89\103\50\101\98\110\66\118\77\51\47\114\111\118\117\74\105\114\72\103\112\77\114\113\50\112\81\103\77\119\77\100\49\97\83\68\66\122\107\89\99\73\51\65\104\100\47\101\102\120\114\98\53\115\121\102\76\47\65\121\101\118\71\81\90\108\82\53\87\117\84\112\98\118\117\101\66\47\49\108\74\83\104\121\120\99\97\51\51\81\66\52\80\71\100\57\65\49\84\109\78\74\43\89\122\74\113\118\122\101\115\56\74\89\118\43\110\79\73\122\107\47\71\116\50\113\104\109\86\111\53\51\112\83\55\50\66\119\70\48\66\111\113\102\88\67\80\80\88\50\121\73\100\68\113\78\55\110\107\71\47\84\97\77\109\104\72\49\82\115\103\115\107\102\69\104\85\115\106\54\90\105\76\118\48\78\101\67\74\74\80\104\69\114\43\87\111\81\56\68\68\90\69\99\80\99\76\90\56\108\106\70\73\100\100\69\71\98\85\54\72\68\75\104\107\51\88\55\57\104\71\80\47\103\122\122\73\122\72\55\68\72\74\104\108\79\65\97\67\87\86\116\49\79\89\90\75\113\68\106\107\103\86\80\53\110\72\105\121\86\113\79\69\70\53\55\110\79\122\54\85\75\57\101\103\70\103\78\119\102\65\75\54\55\85\71\107\73\80\122\66\98\104\106\106\86\48\99\105\81\122\57\105\115\69\120\106\57\115\85\115\72\108\89\120\76\50\118\84\118\56\73\108\54\122\108\52\75\110\100\47\86\72\80\104\100\107\90\86\65\43\101\103\71\82\89\106\110\115\78\117\116\50\111\67\108\108\75\100\111\122\65\103\111\99\73\47\67\85\80\51\100\117\56\86\74\74\110\106\90\73\117\119\77\120\100\69\110\84\54\78\98\81\82\103\83\74\101\112\98\77\119\69\106\112\119\115\77\114\97\78\85\78\75\120\100\116\78\50\105\110\73\117\49\100\67\98\115\118\43\74\113\67\69\52\43\88\113\111\110\122\77\99\90\70\83\99\97\98\113\74\78\121\69\120\76\97\115\75\86\53\97\76\87\56\75\109\116\89\56\101\114\100\83\87\77\110\107\84\78\113\111\89\110\108\54\70\121\111\118\88\50\70\73\79\99\51\116\68\79\86\118\79\76\115\97\70\67\88\107\100\97\115\56\86\122\57\105\48\54\115\80\47\53\108\48\110\80\105\103\43\49\43\97\97\55\114\68\49\109\86\114\48\104\102\99\57\52\47\78\105\77\119\77\120\52\55\106\65\100\88\82\101\122\105\74\47\121\86\54\66\105\66\65\72\48\90\89\81\121\104\101\102\82\55\103\107\51\83\57\66\110\74\112\104\89\101\101\73\107\80\103\56\119\69\71\83\100\77\101\48\117\109\112\99\86\73\110\74\69\89\76\43\43\84\56\109\73\105\110\52\69\120\48\77\111\110\56\48\90\74\122\66\79\43\82\114\48\55\109\106\77\70\54\119\99\112\117\72\113\54\56\104\77\102\87\75\114\73\88\69\67\49\99\101\80\54\74\51\84\117\76\51\98\121\78\84\84\65\90\117\113\52\107\88\117\47\113\114\106\116\51\48\52\119\97\109\55\54\74\81\82\87\56\105\117\54\67\120\118\54\82\100\118\48\115\79\88\113\115\99\117\116\83\121\47\116\106\107\101\112\73\116\104\83\81\120\112\56\117\85\56\73\88\79\100\101\57\120\99\86\68\69\117\67\107\120\106\84\106\70\106\70\120\74\52\116\107\78\76\84\50\80\102\104\80\98\108\68\122\70\68\82\73\70\90\68\50\66\74\111\52\80\81\84\115\112\70\47\121\112\51\71\80\72\57\90\89\69\109\89\112\43\53\77\56\73\115\72\117\89\79\66\47\116\99\76\103\112\50\116\115\67\90\118\115\80\120\90\83\80\85\83\87\98\82\52\116\90\65\47\66\47\47\53\75\97\89\115\84\113\88\115\110\112\117\52\101\104\119\71\112\104\68\102\87\52\105\108\117\109\89\98\52\117\71\119\50\84\119\68\80\108\56\98\110\82\89\111\120\113\78\49\48\100\101\105\88\55\97\70\69\103\87\100\43\86\112\66\56\103\73\115\67\73\116\106\98\101\114\103\89\51\56\79\68\66\109\88\79\104\116\108\87\81\76\52\73\68\49\81\122\76\52\43\89\83\56\72\82\100\52\54\118\115\104\85\52\49\108\85\98\66\55\121\53\111\114\52\47\115\50\90\103\76\117\43\68\107\77\117\49\70\114\78\122\52\90\118\82\97\70\105\110\88\121\51\111\103\65\111\48\56\109\75\51\81\118\76\106\99\54\83\71\105\47\51\47\77\110\88\109\69\48\49\100\68\118\56\43\43\121\70\101\81\50\83\55\66\122\120\57\86\120\48\77\78\111\81\85\115\100\56\110\78\107\103\82\90\56\67\101\56\56\90\47\97\108\108\114\101\100\88\117\49\75\75\84\80\101\87\75\83\68\122\84\111\47\43\69\76\84\101\106\114\119\105\69\118\112\43\81\80\54\43\79\80\102\87\79\53\84\79\82\49\49\99\109\57\76\70\109\116\54\79\89\116\111\105\65\66\117\43\51\109\106\78\43\70\108\47\83\52\88\47\102\52\65\97\43\49\110\87\52\81\76\116\97\83\98\121\69\97\120\112\89\113\73\76\50\114\116\118\88\56\107\98\78\81\65\90\111\98\47\80\75\87\88\85\70\118\57\117\121\73\80\67\82\100\88\78\108\88\116\101\54\56\102\99\119\114\86\53\47\97\70\67\122\70\100\114\77\89\89\98\88\88\119\83\87\103\109\122\104\57\57\56\55\118\90\88\102\82\118\50\83\57\78\101\110\76\81\69\66\50\107\113\88\66\74\106\71\76\114\52\76\121\57\69\73\74\121\111\68\69\90\68\55\111\112\87\86\111\121\77\107\66\109\48\84\83\56\98\112\80\121\54\57\84\104\49\108\73\67\75\82\68\97\121\107\78\55\81\52\89\115\70\54\100\104\115\48\65\107\112\115\75\84\118\51\71\89\87\68\55\69\120\77\73\112\97\85\121\88\85\89\106\79\107\121\108\99\69\84\98\119\97\90\85\98\100\106\73\120\56\109\56\53\74\82\49\107\50\53\86\114\121\104\106\54\112\51\52\112\86\90\53\48\88\84\71\43\72\66\112\83\68\100\57\49\98\69\118\105\52\71\89\85\49\112\73\109\67\112\105\49\107\112\121\98\121\121\110\78\108\82\66\118\108\68\109\111\111\48\99\69\57\90\122\101\76\56\85\71\77\74\114\83\76\110\119\103\77\110\52\67\68\65\120\43\50\100\112\75\83\66\88\66\75\97\98\98\104\52\70\79\119\72\88\109\57\111\48\109\82\100\70\119\66\122\103\76\107\87\102\122\55\111\74\84\67\84\65\112\111\52\116\107\109\75\112\66\102\54\115\116\100\79\55\119\109\88\79\82\65\43\80\102\85\83\102\70\72\54\113\76\99\53\77\85\116\80\90\80\119\107\53\51\111\47\104\106\49\55\83\103\100\107\89\76\67\72\114\47\72\69\69\121\117\108\98\108\68\66\81\114\68\74\102\108\114\52\73\116\103\116\90\107\102\74\118\48\74\49\78\109\105\76\72\110\75\49\49\100\115\90\115\110\52\47\47\122\107\103\114\71\50\120\113\108\103\119\122\53\72\84\74\43\50\54\99\104\121\43\81\116\73\118\47\78\75\115\70\101\99\73\120\56\120\119\74\85\90\110\79\115\78\67\116\102\79\79\84\112\71\55\84\89\121\55\109\102\80\101\111\118\51\103\114\53\119\48\98\72\109\116\69\72\119\70\68\87\85\111\52\108\72\119\54\120\81\68\71\43\90\81\119\112\89\69\67\101\70\79\71\70\86\78\55\107\66\71\74\77\102\49\121\69\77\57\101\78\85\52\56\65\83\53\88\108\100\56\50\104\121\87\107\50\109\56\112\75\117\118\103\100\101\80\75\72\121\114\100\54\47\100\111\117\53\90\48\105\88\82\74\98\121\73\111\74\121\47\87\89\114\99\78\109\86\118\71\55\104\76\87\118\54\57\55\56\86\122\87\57\52\99\75\116\118\43\84\53\100\79\119\121\78\86\72\100\121\108\77\67\117\104\105\76\83\55\85\53\86\77\81\75\120\114\78\73\49\68\48\98\65\75\48\83\85\81\74\48\43\72\54\68\121\97\79\88\121\77\77\80\69\81\66\74\85\99\109\88\68\53\51\119\116\115\80\100\99\50\50\71\73\85\114\98\88\100\103\77\82\75\68\105\89\121\78\115\70\55\84\110\100\69\47\74\112\74\90\52\120\106\79\122\56\69\86\68\110\99\117\90\56\88\112\99\52\111\55\105\100\109\108\103\116\117\90\117\103\54\49\48\74\111\53\84\73\99\120\100\66\121\56\103\65\77\112\53\69\53\115\90\115\115\79\83\111\82\79\98\49\73\51\71\43\117\90\52\68\71\99\98\114\78\57\120\53\112\112\120\108\55\74\104\109\71\74\105\68\86\77\90\109\103\49\121\49\81\48\53\89\83\112\86\70\97\118\116\108\72\53\47\67\78\104\109\87\84\90\72\90\121\75\67\84\80\107\83\97\116\105\72\75\106\113\55\103\53\115\108\65\109\81\114\111\105\76\73\117\43\97\97\89\86\73\119\83\68\81\74\52\52\114\108\118\85\65\122\71\47\83\76\115\102\90\85\104\69\109\55\77\68\108\118\107\79\47\97\113\56\54\49\49\82\120\48\66\118\49\106\84\89\103\53\67\118\56\81\75\101\104\104\97\83\99\78\72\122\97\80\43\81\66\85\67\89\68\113\100\108\56\43\80\66\114\72\105\54\76\111\81\43\75\89\43\70\119\105\77\103\71\80\57\78\121\78\48\75\110\104\120\113\56\55\106\83\50\81\114\68\120\114\105\101\86\103\86\97\120\116\75\72\122\49\83\48\65\100\69\109\97\49\104\72\111\85\75\106\55\76\69\78\87\70\52\90\85\77\118\113\69\113\51\47\66\86\87\119\105\121\113\75\84\84\89\104\108\49\78\76\56\74\70\90\49\102\47\97\120\98\107\66\102\86\88\102\107\49\54\115\120\47\89\108\119\119\116\83\54\106\98\73\117\97\117\55\83\98\52\105\122\76\97\65\57\98\121\49\76\68\118\55\119\47\103\82\56\89\81\47\53\107\80\83\106\68\89\108\71\51\79\68\51\73\71\72\107\120\53\82\121\97\104\90\56\49\80\84\81\54\77\81\108\110\102\119\120\70\83\56\48\74\115\118\75\76\71\98\110\50\76\82\111\77\86\107\102\71\108\75\103\102\110\100\48\101\66\99\106\75\110\113\122\84\69\111\86\106\108\76\66\119\84\100\89\53\118\56\119\102\90\75\57\80\80\79\68\74\115\56\83\105\49\118\102\48\89\68\111\100\101\52\121\89\79\43\102\103\105\105\57\67\84\122\97\105\103\56\53\99\120\52\109\74\77\103\119\72\121\114\52\107\101\70\102\108\51\72\110\75\110\113\70\76\48\88\88\98\81\50\119\101\85\79\101\68\51\120\71\73\47\78\75\118\121\120\86\107\105\53\43\66\79\75\57\104\55\81\75\121\68\84\112\47\72\87\81\51\57\68\82\114\98\43\49\103\68\89\112\109\67\113\73\77\111\103\89\101\107\80\48\55\66\107\70\99\115\115\50\115\90\69\87\85\72\104\57\80\89\122\67\106\73\110\108\66\55\52\67\111\48\52\50\74\75\69\88\83\104\54\114\118\110\52\88\52\80\110\48\70\122\89\50\120\82\116\90\72\48\117\79\108\105\98\117\104\112\99\105\99\99\50\112\65\65\53\83\114\76\84\90\53\120\111\111\106\70\50\80\56\75\48\81\84\48\106\99\87\49\87\51\103\80\87\75\66\116\79\81";local lol_you_have_to_stop_trying_to_deobfuscatelIIllIII='cGdGMyktdmIsIzp7eE5xViI=';local lol_you_have_to_stop_trying_to_deobfuscatelIIllIIl='\108\111\108\32\121\111\117\32\104\97\118\101\32\116\111\32\115\116\111\112\32\116\114\121\105\110\103\32\116\111\32\100\101\111\98\102\117\115\99\97\116\101';local lol_you_have_to_stop_trying_to_deobfuscatelIIlIIlI=function(a,b)local c=lol_you_have_to_stop_trying_to_deobfuscatelIIlIlIl(lol_you_have_to_stop_trying_to_deobfuscatelIIlIllI(a))local d=c["\99\105\112\104\101\114"](c,lol_you_have_to_stop_trying_to_deobfuscatelIIlIllI(b))return lol_you_have_to_stop_trying_to_deobfuscatelIIlIllI(d)end;local lol_you_have_to_stop_trying_to_deobfuscatelIIllIIl='\108\111\108\32\121\111\117\32\104\97\118\101\32\116\111\32\115\116\111\112\32\116\114\121\105\110\103\32\116\111\32\100\101\111\98\102\117\115\99\97\116\101';local lol_you_have_to_stop_trying_to_deobfuscatelIIllIll='\101\108\73\57\77\88\78\110\76\49\115\108\85\81\61\61';local lol_you_have_to_stop_trying_to_deobfuscatelIIllIlI='QHZiQkloTlA+cEtBQWl3MDMzUA==';local lol_you_have_to_stop_trying_to_deobfuscatelIIlIIII='Oz8/NGtZYjtDaUkrRkErWloyOyNzUyVycTolSjNqJDQwaE4=bi12PyZmUDh0RiF1';function lol_you_have_to_stop_trying_to_deobfuscatelIIlIlll(a,b)local c=lol_you_have_to_stop_trying_to_deobfuscatelIIlIllI(a,b);local d=lol_you_have_to_stop_trying_to_deobfuscatelIIllIlI;return c,d end;return lol_you_have_to_stop_trying_to_deobfuscatelIIlIlII(lol_you_have_to_stop_trying_to_deobfuscatelIIlIIlI(lol_you_have_to_stop_trying_to_deobfuscatelIIllIll,lol_you_have_to_stop_trying_to_deobfuscatelIIlIIIl),getfenv(0))()end)()