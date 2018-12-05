(defrule find-list
	(list $?)
	=>
	(printout t "found list" crlf )
)

(defrule find-C-items
	(list $?before c $?after)
	=>
	(printout t $?before " are before c and " $?after " are after c" crlf))
