(define (domain pitfalls)
(:requirements :strips :conditional-effects :typing)
(:types num char grid)
(:predicates (loc ?who - char ?sq - grid)
(adj ?sq1 - grid ?sq2 - grid)
(pit ?sq - grid)
(char ?who - char)
(inc ?n1 - num ?n2 - num)
(k ?char - char ?n - num))
(:action move
:parameters (?who - char ?from - grid ?to - grid)
:precondition (and (char ?who)
                    (loc ?who ?from)
                    (adj ?from ?to)
                    (not (pit ?to))
                    ;;(k ?who ?n)
)
:effect (and (not (loc ?who ?from))
                    (loc ?who ?to)
                    (forall (?who - char ?n1 ?n2 - num)(when(k ?who ?n )
			(forall (?n1 - num) (when(and(inc ?n1 ?n2)(k ?who ?n1))
				(k ?who ?n2)
			))
                    )
)



)
