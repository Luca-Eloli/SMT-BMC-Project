(define (problem grid1)
(:domain pitfalls) 
(:objects sq11 sq12 sq13 sq14 sq15 sq21 sq22 sq23 sq24 sq25 sq31 sq32 sq33 sq34 sq35 sq41 sq42 sq43 sq44 sq45 sq51 sq52 sq53 sq54 sq55 - grid
agent - char 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 - num)
(:init (char agent)(loc agent sq11)(k agent 0)
(inc 0 1)(inc 1 2)(inc 2 3)(inc 3 4)(inc 4 5)(inc 5 6)(inc 6 7)(inc 7 8)(inc 8 9)(inc 9 10)(inc 10 11)(inc 11 12)(inc 12 13)(inc 13 14)(inc 14 15)
    (adj sq11 sq12)(adj sq12 sq13)(adj sq13 sq14)(adj sq14 sq15)(adj sq15 sq14)(adj sq14 sq13)(adj sq13 sq12)(adj sq12 sq11)
    (adj sq21 sq22)(adj sq22 sq23)(adj sq23 sq24)(adj sq24 sq25)(adj sq25 sq24)(adj sq24 sq23)(adj sq23 sq22)(adj sq22 sq21)
    (adj sq31 sq32)(adj sq32 sq33)(adj sq33 sq34)(adj sq34 sq35)(adj sq35 sq34)(adj sq34 sq33)(adj sq33 sq32)(adj sq32 sq31)
    (adj sq41 sq42)(adj sq42 sq43)(adj sq43 sq44)(adj sq44 sq45)(adj sq45 sq44)(adj sq44 sq43)(adj sq43 sq42)(adj sq42 sq41)
    (adj sq51 sq52)(adj sq52 sq53)(adj sq53 sq54)(adj sq54 sq55)(adj sq55 sq54)(adj sq54 sq53)(adj sq53 sq52)(adj sq52 sq51)
    (adj sq11 sq21)(adj sq12 sq22)(adj sq13 sq23)(adj sq14 sq24)(adj sq15 sq25)(adj sq21 sq11)(adj sq22 sq12)(adj sq23 sq13)(adj sq24 sq14)(adj sq25 sq15)
    (adj sq21 sq31)(adj sq22 sq32)(adj sq23 sq33)(adj sq24 sq34)(adj sq25 sq35)(adj sq31 sq21)(adj sq32 sq22)(adj sq33 sq23)(adj sq34 sq24)(adj sq35 sq25)
    (adj sq31 sq41)(adj sq32 sq42)(adj sq33 sq43)(adj sq34 sq44)(adj sq35 sq45)(adj sq41 sq31)(adj sq42 sq32)(adj sq43 sq33)(adj sq44 sq34)(adj sq45 sq35)
    (adj sq41 sq51)(adj sq42 sq52)(adj sq43 sq53)(adj sq44 sq54)(adj sq45 sq55)(adj sq51 sq41)(adj sq52 sq42)(adj sq53 sq43)(adj sq54 sq44)(adj sq55 sq45)  
    (pit sq22)(pit sq23)(pit sq24)(pit sq32)(pit sq33)(pit sq34)(pit sq42)(pit sq43)(pit sq44)
)
(:goal (loc agent sq55))
  )