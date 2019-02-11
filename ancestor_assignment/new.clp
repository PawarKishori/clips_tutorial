(deffacts dummy
	(pop))

(defrule findGrandmother
	?pop<-(pop)
	?old<-(level-mother-daughters ?l ?m $?ds1)
	(level-mother-daughters =(+ ?l 1) =(nth$ 1 $?ds1) $?ds2)
	(test (> (length (rest$ $?ds1)) 0))
	=>
	(retract ?old)
	(assert (level-mother-daughters ?l ?m (rest$ $?ds1)))
	(assert (level-grandMother-grandDaughters ?l ?m $?ds2 ))
)

(defrule test_for_single_child
	(level-mother-daughters ?l ?m ?d)
	(level-mother-daughters =(+ ?l 1) ?d ?gd)
	=>
	(assert (level-grandMother-grandDaughters ?l ?m ?gd)))

(defrule findGrandmother-helper
	;(declare (salience 5))
	?f0<-(level-grandMother-grandDaughters ?l ?m $?ds1)
	?f1<-(level-grandMother-grandDaughters ?l ?m $?ds2)
	(test (neq ?f0 ?f1))
	=>
	(retract ?f0 ?f1)
	(assert (level-grandMother-grandDaughters ?l ?m $?ds2 $?ds1)))

