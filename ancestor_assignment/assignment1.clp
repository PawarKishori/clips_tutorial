;(defrule findGrandRelation
;	(m-d ?m $?ds1)
;	?f0<-(m-d ?m ?eld1&:(first$ $?ds1) ?y&:(rest$ $?ds1))
;	(m-d  ?eld1 $?ds2 )
;	=>
;	(printout t "rule fired" crlf)
;	(retract ?f0)
;	(assert (m-d ?m $?ds2 rest$ $?ds1))

;)
(defrule test
;	(m-d (nth$ 1 $?ds1) $?ds2)
;	(m-d ?m ?x $?ds1 )
;	(m-d ?x $?ds2)
	?f0<-(m-d ?m $?ds1)
	(m-d ?m ?eld1&:(first$ $?ds1) $?remain&:(rest$ $?ds1))
	(m-d ?eld1 $?ds2 )
	=>
	(printout t "OK" crlf)
	(retract ?f0)
	(assert (m-d ?m $?ds2 $?remain)) 
	(printout t "length: " (length$ $?remain) crlf)
	;(printout t "M=> " ?m " ,eld1=> " ?eld1 " ,remain=> " ?remain crlf )
	;(printout t "Test rule fired " ?eld1  crlf)
	;(printout t ?m " " $?ds2 " " $?ds1 crlf)
)

;(defrule findFirst
;	(m-d ?m $?ds1)
;	=>
;	(assert (m-elder ?m (first$ $?ds1))) )
;(defrule findRest
;	(m-d ?m $?ds1)
;	=>
;	(assert (m-youngers ?m (rest$ $?ds1)))
;	)
