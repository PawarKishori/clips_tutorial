(defrule factorial
	(fact_run ?x)
	=>
	(assert (fact ?x 1)))

(defrule fact_helper
	(fact ?x ?y)
	(test (> ?x 0))
	=>
	(assert (fact (- ?x 1)(* ?x ?y))))
