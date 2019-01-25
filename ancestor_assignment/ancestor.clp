(defrule add_length_of_daughter
	?f0<-(l-m-ds ?l ?m $?ds)
	=>
	(assert (l-m-ds-len ?l ?m $?ds (length$ $?ds)))

;(retract ?f0)
;(assert (l-al-a-s ?l ?m (first$ $?ds)))
;(assert (l-al-a-s ?l ?m (rest$ $?ds)))

)

(defrule split_daughters
	?f0<-(l-m-ds-len ?l ?m $?ds ?len)
	(test (> ?len 1))
	=>
	(retract ?f0)
	(assert (l-m-ds-len ?l ?m (first$ $?ds) 1))
	(assert (l-m-ds-len ?l ?m (rest$ $?ds) (length$ (rest$ $?ds))))
)
 
(defrule modify_fact
	(declare (salience 5))	
	?f0<-(l-m-ds-len ?l ?m ?d 1)
	?f1<-(l-m-ds-len =(+ ?l 1) ?d ?gd ?len)
	=>
	(retract ?f0 ?f1) 
	(assert (l-m-ds-len ?l ?m ?gd  (+ ?len 1)))
)

