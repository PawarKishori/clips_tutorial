(defrule substitute
   (Head-Level-Mother-Daughters ?h1 ?l1 ?m1 $?ds1)
   ?f0 <- (Head-Level-Mother-Daughters ?h1 ?l1 ?m1 ?eld1&:(first$ $?ds1) $?remain&:(rest$ $?ds1))
   (Head-Level-Mother-Daughters ?h2 ?l2&:(+ ?l1 1) ?eld1 $?ds2)
   =>
   (printout t "RECURSION:: " ?m1 "==> " ?eld1 " " $?remain crlf)
   (retract ?f0)
   (assert (Head-Level-Mother-Daughters ?h1 ?l1 ?m1 (first$ $?remain) (rest$ $?remain) $?ds2)))
	
