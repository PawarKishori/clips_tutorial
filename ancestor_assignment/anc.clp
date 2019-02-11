(defrule generate-Daughter-from-Daughters
	?f0<-(level-mother-daughters ?l ?m $?ds)
	(test (> (length$ $?ds) 1))
	=>
	(retract ?f0)
	(assert (level-ancestor_level-ancestor-successor ?l 1 ?m (nth$ 1 $?ds)))
	;(printout t "#################### : " ?l " 1 " ?m " " (nth$ 1 $?ds) crlf)
	(assert (level-mother-daughters ?l ?m (rest$ $?ds)))
)
(defrule generate-Daughter-from-Daughters-helper
	?f0<- (level-mother-daughters ?l ?m $?ds)
	(test (= (length$ $?ds) 1)) 
        =>
        (retract ?f0)
        (assert (level-ancestor_level-ancestor-successor ?l 1 ?m $?ds))
	;(printout t "#################### : " ?l " 1 " ?m " " $?ds crlf)
)

(defrule generate-ancestor-level
	(leaf_id-word ?id ?leaf)
	(level-ancestor_level-ancestor-successor ?l ?al1 ?m ?leaf)
	;(level-ancestor_level-ancestor-successor ?l2&:(- ?l 1) ?al2 ?gm ?m)
	(level-ancestor_level-ancestor-successor ?l2&:(< ?l2 ?l) ?al2 ?gm ?m)
	=>
	;(printout t "**************** : " ?l2 " " (+ ?al1 1) " " ?gm " " ?leaf crlf)
	(assert (level-ancestor_level-ancestor-successor ?l2 (+ ?al1 1) ?gm ?leaf))
)

(defrule ancestor-successor
	(leaf_id-word ?id ?leaf)
	(level-ancestor_level-ancestor-successor ?l ?al ?a ?leaf)
	;(level-ancestor_level-ancestor-successor ?l1 ?al1 ?a $?leaf1)
;	(test (neq ?leaf $?leaf1))
	=>
	;(printout t "FINAL : " ?a  " " ?leaf crlf)
	(assert (ancestor-successors ?a ?leaf))
)	
(defrule ancestor-successor-combine
	?f0<-(ancestor-successors ?a ?leaf)
	?f1<-(ancestor-successors ?a $?leaf1)
	(test (neq ?f0 ?f1))
	;(test (neq ?pid P1))
	=>
	
	(retract ?f0 ?f1)
	(assert (ancestor-successors ?a ?leaf $?leaf1))
)
