(deffacts dummy
	(pop))
;(deffunction myfirst($?daughters)
;	(first$ $?daughters))
;(deffunction myrest($?daughters)
;	(rest$ $?daughters))
;(deffunction giveDaughters(?m)
;	(bind $?var nth$ 3 (l-m-d ?m $?ds))
;	($?var))
;(deffunction pushFromBack(?m $?daughters)
;	(create$ ))

(defrule test
	?pop<-(pop)
	?old<-(l-m-d ?l ?m $?ds1)
	(l-m-d ?l1 =(nth$ 1 $?ds1) $?ds2)
	(test (neq ?l ?l1))
	;(current_mother ?m)
	=>
;	(printout t "poped=>" ?old crlf)
	(retract ?old)
	(assert (l-m-d ?l ?m (rest$ $?ds1)))
	(assert (l-gm-gds ?l ?m $?ds2 ))
;	(assert (l-gm-gds 1 ?m (giveDaughters ?m) ))
)

(defrule test-helper
	(declare (salience 5))
	?f0<-(l-gm-gds ?l ?m $?ds1)
	?f1<-(l-gm-gds ?l ?m $?ds2)
	(test (neq $?ds1 $?ds2))
	=>
	(retract ?f0 ?f1)
	(assert (l-gm-gds ?l ?m $?ds2 $?ds1)))

;(defrule demo
;	(l-m-d ?l ?m $?ds1)

;	(l-m-d ?l =(nth$ 1 $?ds1) $?ds2)
;	=>
;	(printout t "OK" crlf)

;)

;(defrule demo1
 ;       (l-m-d ?l ?m $?ds1)
  ;      =>
   ;     (printout t "OK brackets " (first$ $?ds1) crlf)
    ;    (printout t "Nth function " (nth$ 1 $?ds1) crlf)
     ;  ; (printout t "OK" first$ $?ds1 crlf)

;)

