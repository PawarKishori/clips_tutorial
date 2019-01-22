(defrule ancestor-successor
	?f1<-(level-mother-daughters ?l $?pre ?x $?post)
	;(level-mother-daughters =(+ ?l 1) ?x $?ds)   ; Roja ma'am suggested to write following 2 lines instead of this to check level condition.
	(level-mother-daughters ?l2  ?x $?ds)
	(test (neq ?l ?l2))
	=>
	(retract ?f1)	
	(assert (level-mother-daughters ?l $?pre $?ds $?post))
	(printout t "OK" crlf))
