

from z3 import *

S,e,n,d,m,o,r,y,p,l,a = Ints('S e n d m o r y p l a')
s = Solver()
s.add(S > 0)
s.add(e > 0)
s.add(n > 0)
s.add(d > 0)
s.add(m > 0)
s.add(o > 0)
s.add(r > 0)
s.add(y > 0)
s.add(p > 0)
s.add(l > 0)
s.add(a > 0)
"""s.add(S <= 10)
s.add(e <= 10)
s.add(n <= 10)
s.add(d <= 10)
s.add(m <= 10)
s.add(o <= 10)
s.add(r <= 10)
s.add(y <= 10)
s.add(p <= 10)
s.add(l <= 10)
s.add(a <= 10)"""

s.add(((S*e*n*d)+(m*o*r*e)==(m*o*n*e*y)+(p*l*e*a*S*e)))
s.add(Distinct(S,e,n,d,m,o,r,y,p,l,a))

print(s.check())
F= s.model()
for j in F.decls():
    print("%s = %s" % (j.name(), F[j]))