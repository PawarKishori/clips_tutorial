(load "anc.clp")
(load-facts "anc.dat")
(load-facts "leaf_id-word.dat")
(facts)
(watch activations)
;(watch facts)
(run)
;(facts)
(save-facts "results.dat"  local ancestor-successors )
(save-facts "all-ancestor-successor.dat" local level-ancestor_level-ancestor-successor)
(exit)
