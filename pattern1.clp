(defrule grandfather
	(is-grandfather ?x)
	=>
	(assert (is-a-man ?x)
		(is-a-father ?x)))

(defrule modify-grandfather-fact
	?old <- (is-grandfather ?name)
	=>
	(retract ?old)
	(assert (has-grandchild ?name)))


(defrule simple-loop
	?old <- (loop-fact)
	=>
	(printout t "Looping" crlf)
	(retract ?old)
	(assert (loop-fact)))
