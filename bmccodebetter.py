
from z3 import *
s = Solver()
#establish integer value
p = Int('x')
s.add(p == 0)
count = 0 #establish initial state
movcount = [Int(str(count)) for count in range(100)]# establish 100 variables to keep track of moves
# establish rules of the game, multiple actions that the solver 
# can take 
def action1(x):
    y = x+1
    return y

def action2(x):
    y = x-1
    return y

def action3(x):
    y = x*2
    return y

def action4(x):
    y = x*x
    return y

#the following function picks a random rule, and applies it
def move(x):
    global p
    m = movcount[x]
    s.add(m >= 1)
    s.add(m <= 4)
    p = If(m == 1, action1(p),
        If(m == 2, action2(p),
        If(m == 3, action3(p),
                    action4(p))));

# to solve the puzzle, we iterate through moves to determine reachability
def puzzlesolve():
    global count, p
    if count == 100:
       print("solution not found within 100 moves") #timeout
    else:
       move(count) 
       count = count+1 #iterate count
       s.push() #creates a new scope by saving stack size
       s.add(p == 530000) #checks for the goal state, in this case an integer of 123
       if s.check() == sat:
           # puzzle is solved
           print("Solution discovered in %d moves" % count)#print to console
           m = s.model()
           for i in range(count):
               f = m[movcount[i]].as_long() #returns f, m as bignum
               print("on step %d performed %s" % (i+1, ("action-1", "action-2", "action-3", "action-4")[f - 1]))#deatils plan to achieve goal state
       else:
           print("No solutions with %d moves" % count) #update console with move count upon no solution on current step
           s.pop() #removes assertions made from pop
           puzzlesolve()
puzzlesolve()