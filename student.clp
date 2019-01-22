(deftemplate student 
	(slot name)
	(slot gender)
	(slot marks)
)

;(defrule smart_stdent
;	(student (name ?x))
;	(student (name ?x)(gender ?)(marks ?y))
;	(test (< ?y 86))
;	=>
;	(printout t "Smart Student is " ?x crlf)
;)

;(defrule find  
;(student (name ?x)(gender Male))
;=>
;(printout t "People male" ?x crlf))   

(defrule if_kishori_chanchal
?f1<-(student (name ?x)(gender Female)(marks ?))
=>
(retract ?f1)
(assert ?f1))

