;golden-section
(define a -1)(define b 1);2.84786
(define (fun x)
 (set! x (- x (/ 101 102 e)))
 (expt(sin(- (* 2 (exp(- x))) 4)) 3)
;     ln(x+1)   +   e^(-x+7)  +     (x-8)^3  - arctg(x-6) - 2
)
(define eps 0.00001)
(define (golden-section-search a b)
 (let(
      (xmin(if(< a b)(golden-start a b)(golden-start b a )))
     )
     (newline)
     xmin
 )
)
(define (golden-start a b)
 (set! mphi(* 0.5(- 3(sqrt 5))))
 (let(
      (xa (+ a (* mphi(- b a))))
      (xb (- b (* mphi(- b a))))
     )
     (try a b xa (fun xa) xb (fun xb))
 )
)
(define mphi 0)
(define (try a b xa ya xb yb)
 (cond((<(abs (- a b))eps)(* (+ a b)0.5))
      (#t (display "+")
          (cond((< ya yb)(set! b xb)
                         (set! xb xa)
                         (set! yb ya)
                         (set! xa (+ a (* mphi(- b a))))
                         (try a b xa (fun xa) xb yb)
                )
                (else    (set! a xa)
                         (set! xa xb)
                         (set! ya yb)
                         (set! xb (- b (* mphi(- b a))))
                         (try a b xa ya xb (fun xb))
                )
          )
       )
 )
)
(define xmin 0)
(set! xmin(golden-section-search a b))
  (display"interval=\t[")
  (display a)
  (display" , ")
  (display b)
  (display"]\n")
  (display"xmin=\t\t")
xmin
  (display"f(xmin)=\t")
(fun xmin)