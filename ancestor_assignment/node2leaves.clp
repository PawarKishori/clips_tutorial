(defrule get_direct_leaf_of_any_node
	?f1<-(Head-Level-Mother-Daughters ?h1 ?l $?pre ?x $?post)
	(Head-Level-Mother-Daughters ?h2 ?l2  ?x $?ds)
	(test (neq ?l ?l2))
	=>
	(retract ?f1)	
	(assert (Head-Level-Mother-Daughters ?h1 ?l $?pre $?ds $?post))
	(printout t "OK" crlf))
