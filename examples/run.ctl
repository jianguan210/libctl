; Sample control file (for photonic-crystal.scm specification).
; You should edit this file in Scheme mode if you are using emacs:
; type M-x scheme-mode or modify your .emacs file to automatically
; put .ctl files in Scheme mode.

; Define some dielectric materials:
(define GaAs (make material-type (epsilon 11.56)))
(define AlOx (make material-type (epsilon 2.25)))

; Set the dimensions.  Use set! rather than define to change the value
; of an existing variable.
(set! dimensions 2)

; Set the k-point list:
(set! k-points 
  (list
   (vector3 0 0)
   (vector3 0.5 0)
   (vector3 0.5 0.5)
   (vector3 0 0)))

; Reset the k-point list for fun, in a fancier way:
(define Gamma-point (vector3 0 0))
(define X-point (vector3 0.5 0))
(define M-point (vector3 0.5 0.5))
(set! k-points (list Gamma-point X-point M-point Gamma-point))

; Set the geometry:
(set! geometry
      (list
       (make cylinder (material air) (center 0 0) (radius 0.2) (height 0.5))
       (make sphere (material GaAs) (center 0.1 -0.1) (radius 0.1))
       (make block (material AlOx) (center 1 2) (size 3.2 2.3))))

; Normally, at the end of the input file, we call (run) to run
; the simulation.  Here, though, we comment it out--when we don't
; call (run), we are dropped into interactive mode, where we can
; enter more commands and/or type (run) manually.

; (run)
