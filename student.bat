(load "student.clp")
(assert
	(student
		(name "Kishori")
		(gender Female)
		(marks 80)
	)
)

(assert (student (name "Prateek") (gender Male) (marks 90)))
(assert (student (name "Shastri") (gender Male) (marks 95)))
(run)
(exit)
