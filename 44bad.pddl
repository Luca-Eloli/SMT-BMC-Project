(define (problem grid1)
(:domain pitfalls) 
(:objects sq11 sq12 sq13 sq14 sq21 sq22 sq23 sq24 sq31 sq32 sq33 sq34 sq41 sq42 sq43 sq44 - grid
agent - char 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 - num)
(:init (char agent)(loc agent sq11)(k agent 0)
	
    (adj sq11 sq12)(adj sq12 sq13)(adj sq13 sq14)(adj sq14 sq13)(adj sq13 sq12)(adj sq12 sq11)
    (adj sq21 sq22)(adj sq22 sq23)(adj sq23 sq24)(adj sq24 sq23)(adj sq23 sq22)(adj sq22 sq21)
    (adj sq31 sq32)(adj sq32 sq33)(adj sq33 sq34)(adj sq34 sq33)(adj sq33 sq32)(adj sq32 sq31)
    (adj sq41 sq42)(adj sq42 sq43)(adj sq43 sq44)(adj sq44 sq43)(adj sq43 sq42)(adj sq42 sq41)
    (adj sq11 sq21)(adj sq12 sq22)(adj sq13 sq23)(adj sq14 sq24)(adj sq21 sq11)(adj sq22 sq12)(adj sq23 sq13)(adj sq24 sq14)
    (adj sq21 sq31)(adj sq22 sq32)(adj sq23 sq33)(adj sq24 sq34)(adj sq31 sq21)(adj sq32 sq22)(adj sq33 sq23)(adj sq34 sq24)
    (adj sq31 sq41)(adj sq32 sq42)(adj sq33 sq43)(adj sq34 sq44)(adj sq41 sq31)(adj sq42 sq32)(adj sq43 sq33)(adj sq44 sq34)

    (pit sq13)(pit sq22)(pit sq34)(pit sq43)
)
(:goal (loc agent sq44))
  )