(deftemplate student 
	(slot name)
	(slot gender)
	(slot marks)
)

(defrule smart_stdent
	(student (name ?x))
	(student (name ?x)(gender ?)(marks ?y))
	(test (< ?y 86))
	=>
	(printout t "Smart Student is " ?x crlf)
)

;Understand what the following code is doing
;Reference: https://stackoverflow.com/questions/19332952/clips-expected-the-beginning-of-a-construct
;(deffacts initial

;	(student
;		(name "Ayushi")
;		(gender Female)
;		(marks	85)
;	)
;)
;(defrule find_name
;	?name <- (student (name "Kishori"))
;	=>
;	(printout t ?name crlf)
;)
