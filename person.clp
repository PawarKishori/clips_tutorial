(deftemplate person
	(slot name)
	(slot eye)
	(slot hair))
(deftemplate finds
	(slot eye))

(defrule find-blue-eye "Finding person whose eyes are blue"
	(person (name ?name) (eye blue))
	=>
	(printout t ?name " has BLUE eyes" crlf))
(defrule find-eyes "2nd usage of variable"
	(finds (eye ?eye))
	(person (name ?name) (eye ?eye))
	=>
	(printout t "** BLUE eyed person is" ?name crlf)) 
	
	
(deffacts people
	(person (name kishori) (eye black) (hair black))
	(person (name Aishwarya) (eye blue) (hair brown))
	(person (name Kojol ) (eye blue) (hair red)))
