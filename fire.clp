(deftemplate emergency (slot type))
(deftemplate responce (slot action))
(defrule fire-emergency
	(emergency (type fire))
	=>
	(assert (responce (action fire-extinguisher))))
