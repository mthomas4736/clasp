(progn
  (time (require :asdf))
  (time (funcall (find-symbol "LOAD-SYSTEM" "ASDF") :clasp-cleavir)))

(with-open-file (clasp-cleavir:*debug-log* "/tmp/tsp/tsp.log" :direction :output)
  (let ((*compile-print* t))
    (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;tsp.lsp")
    ))

(let ((*compile-print* t))
  (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;tsp.lsp")
  )

(in-package :core)
(with-open-file (clasp-cleavir:*debug-log* "/tmp/tc.log" :direction :output)
  (let ((*compile-print* t))
    (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;tc.lsp")
  ))
(print "Hello")


(let ((*debug-log* t))
  (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;dm.lsp"))
(load "sys:..;tests;lisp;dm.bc")
(test)

(core:getpid)13886

(cleavir-compile 'mtest '(core:fset 'test #'(lambda (def env) (print "Hello") ) t) )
(mtest)
(test)
(cleavir


(cleavir-compile 'foo '(lambda () #'(lambda () (labels ((foo () (print "foo"))) (foo)))) :debug t)


(cleavir-compile 'foo '(lambda () (core::multiple-value-call #'list (values 1 2))) :debug t)

(cleavir-compile 'foo '(lambda () (defun traverse-car (tree)
				    (labels ((tcar (subtree)
					       (when subtree (tcar (car subtree)))))
				      (tcar tree))))
		 :debug t)

(cleavir-compile 'foo '(lambda () (labels ((fun () (fun))) (fun))) :debug t)
(cleavir-compile 'foo '(labels ((fun1 () (fun2)) (fun2 () (fun2))) (fun1)) :debug t)



(load "sys:..;tests;cleavir;basic.lsp")


(foo)

(cleavir-compile 'foo '(lambda (x y) (declare (core:lambda-name foo-lambda)) (declare (ignore x)) (+ x y)) :debug t )


(cadr (find 'b '((a 1) (b 2)) :key #'car))

(let ((*debug-cleavir* t))
  (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;testltv.lsp"))

(clasp-cleavir::cleavir-compile-file "sys:kernel;asdf;build;asdf.lisp")
(core:getpid)


+temp-i8+
(cleavir-compile 'foo '(lambda (ht)
			(loop :for name :being :the :hash-keys :of ht :do
			   (print ht))))
(defparameter h (make-hash-table :test #'eq))
(dolist (l '(a b c d e))
  (setf (gethash l h) l))
(foo h)

(macroexpand '(defconstant +i8+ (llvm-sys:type-get-int8-ty *llvm-context*)))
(PROGN
  (*MAKE-CONSTANT '+I8+ (LLVM-SYS:TYPE-GET-INT8-TY *LLVM-CONTEXT*))
  NIL
  (EVAL-WHEN (:COMPILE-TOPLEVEL)
    (*MAKE-CONSTANT '+I8+ (LLVM-SYS:TYPE-GET-INT8-TY *LLVM-CONTEXT*))
    (CORE::REGISTER-GLOBAL '+I8+))
  '+I8+)





(require :asdf)
(asdf:load-system :clasp-cleavir)

(macro-function 'asdf:load-system)

(core:getpid)
(print "Hello")


(cleavir-compile 'mv0 '(lambda () (block hello (ff (lambda (x) (return-from hello (gg x)))))) :debug t)

(cleavir-compile 'mvpathological '(lambda () (multiple-value-call #'list (block foo (funcall (lambda () (return-from foo (values 1 2))))) (block bar (funcall (lambda () (return-from bar (values 3 4))))))) :debug t)




(core:multiple-value-funcall #'list (lambda () (block foo (funcall (lambda () (return-from foo (values 1 2)))))) (lambda () (block bar (funcall (lambda () (return-from bar (values 3 4)))))))

(cleavir-compile 't0 '(lambda () 0) :debug t)


(progn
  (push :arguments cmp:*low-level-trace*)
  (push :all cmp:*low-level-trace*)
  (setq cmp:*low-level-trace-print* t))

(compile-file "sys:..;tests;lisp;tiny3.lsp")
(load "sys:..;tests;lisp;tiny3.fasl")
(foo 1 2)

(clasp-cleavir::cleavir-compile 'tmv '(lambda () (multiple-value-call #'list (values 1 2) (values 3 4) (values 5 6 7 8 9) )) :debug t)

(tmv)
(print clasp-cleavir:*debug-cleavir*)
(draw-ast *ast*)

(make-package "CLASP-CLEAVIR")
(cmp:load-bitcode "sys:..;tests;lisp;tiny0.bc")
(ta 7 :y 1 :y 2 :y 3 :y 4 :z 5)

*var*
(setq cmp:*debug-compile-file* t)
(with-open-file (clasp-cleavir:*debug-log* "/tmp/compilefile.log" :direction :output)
  (let ((cmp:*compile-print* t))
    (clasp-cleavir::cleavir-compile-file "sys:kernel;cmp;compilefile.lsp")
  ))

(load "sys:kernel;lsp;foundation.fasl")
(print "Hello")

(clasp-cleavir::cleavir-compile-file "sys:kernel;asdf;build;asdf.lisp")

(apropos "max-character-type-index")



(let ((clasp-cleavir:*debug-cleavir* t))
  (clasp-cleavir::cleavir-compile-file "sys:..;tests;lisp;tiny1.lsp"))
(draw-ast *ast*)



(load "sys:..;tests;lisp;tiny1.fasl")





(let ((clasp-cleavir:*debug-cleavir* t))
  (cleavir-compile 't0 
		   '(lambda (x &key (y nil y-p) (z nil z-p)) 
		     (list x (list y y-p) (list z z-p)))))
(t0 1 :y 2)

(cleavir-compile 't0 '(lambda (item &optional (list #'eq)) 1))
					;&key key (test2 1) test-not) ))




(cleavir-compile 'ta '(lambda (x &optional (y 888) (z 999)) (list x y z)))

(t0 7 :y 2)


(ta 7)

(let ((times 1000000)
      (code '(lambda (x mult) 
	      (let ((total 0) 
		    (count 0))
		(tagbody 
		 top
		   (setq total (+ total x))
		   (setq count (1+ count))
		   (if (< count mult)
		       (go top)))
		total))))
  (compile 'clasp-test code)
  (cleavir-compile 'cleavir-clasp-test code)
  (format t "cleavir-clasp-test~%")
  (time (format t "cleavir-clasp result: ~a~%" (cleavir-clasp-test 1 times)))
  (format t "clasp-test~%")
  (time (format t "        clasp result: ~a~%" (clasp-test 1 times))))

(fdefinition 'clasp-test-defun)


(compile 'adotimes '(lambda (x n) (let ((total 0)) (dotimes (i n) (setq total (+ total x))) total)))

(compile 'ahand '(lambda (x mult) 
		(let ((total 0) 
		      (count 0))
		  (tagbody 
		   top
		     (setq total (+ total x))
		     (setq count (1+ count))
		     (if (< count mult)
			 (go top))
		     )
		  total)))

(cleavir-compile 'cdotimes '(lambda (x n) (let ((total 0)) (dotimes (i n) (setq total (+ total x))) total)))

(cleavir-compile 'chand '(lambda (x mult) 
			  (let ((total 0) 
				(count 0))
			    (tagbody 
			     top
			       (setq total (+ total x))
			       (setq count (1+ count))
			       (if (< count mult)
				   (go top))
			       )
			    total)))

(time (adotimes 1 1000000))
(time (ahand    1 1000000))
(time (cdotimes 1 1000000))
(time (chand    1 1000000))


	 (lambda (x n) (let ((total 0)) (dotimes (i n) (setq total (+ total x))) total)))

(disassemble 'tdo)




(let ((code '(lambda (x n) (let ((total 0)) (dotimes (i n) (setq total (+ total x))) total)))
      (num 1000000))
  (cleavir-compile 'cleavir-clasp-dotimes code)
  (compile 'clasp-dotimes code)
  (time (format t "cleavir-clasp result: ~a~%" (cleavir-clasp-dotimes 1 num)))
  (time (format t "        clasp result: ~a~%" (clasp-dotimes 1 num))))


;;;; My hand written loop
(defun clasp-test (x mult) 
  (let ((total 0) 
	(count 0))
    (tagbody 
     top
       (setq total (+ total x))
       (setq count (1+ count))
       (if (< count mult)
	   (go top))
       )
    total))

;;; A series of macroexpands that expand DOTIMES
(macroexpand '(dotimes (i n) (setq total (+ total x))))
(BLOCK NIL
  (LET* ((CORE::%DOTIMES-VAR N) (I 0))
    (DECLARE)
    (CORE::WHILE (< I CORE::%DOTIMES-VAR)
                 (SETQ TOTAL (+ TOTAL X))
                 (SETQ I (1+ I)))))

(macroexpand '(CORE::WHILE (< I CORE::%DOTIMES-VAR)
                 (SETQ TOTAL (+ TOTAL X))
	       (SETQ I (1+ I))))
(TAGBODY
  (GO #:G2230)
 #:G2229
  (SETQ TOTAL (+ TOTAL X))
  (SETQ I (1+ I))
 #:G2230
  (WHEN (< I CORE::%DOTIMES-VAR) (GO #:G2229)))
T

(macroexpand '(WHEN (< I CORE::%DOTIMES-VAR) (GO #:G2229)))
(IF (< I CORE::%DOTIMES-VAR) (PROGN (GO #:G2229)))
T

(time (tdo-cleavir 1 10000000))
(time   (tdo-clasp 1 10000000))





(defun b (x mult) 
  (let ((total 0) 
	(count 0))
    (tagbody 
     top
       (setq total (+ total x))
       (setq count (1+ count))
       (if (< count mult)
	   (go top))
       )
    total))






(probe-file "sys:..;tests;lisp;tiny1.lsp")
(defun cleavir-primop:call-with-variable-bound (&rest args)
  (error "What do I do now???"))

(setf (fdefinition 'cleavir-primop:call-with-variable-bound) (fdefinition 'core:call-with-variable-bound))

(defparameter *a* 1)
(defun foo () (print (list "*a*" *a*)))
(cleavir-compile 'tspec '(lambda (*a*) (print *a*)#|| (foo) (values 1 2 3)||#))
(tspec 10)


(cleavir-compile 'tspec2 '(lambda () (print 1) (foo)))
(tspec2 1)
*a*



(cleavir-compile 'tup '(lambda () (unwind-protect (progn (print "protected") (values 1 2 3)) (print "cleanup") (values 4 5 6))))

(progn
  (defun foo (fn) (funcall fn))
  (cleavir-compile 'tgo '(lambda () (tagbody a (foo (lambda () (go b))) (print "a") b (print "b")))))
(tgo)

(progn
  (defun diddly (fn) (funcall fn))
  (cleavir-compile 'tret '(lambda () (print (block foo (diddly (lambda () (return-from foo 'bar))) 2)))))
(tret)


(tret)
(progn
  (defun foo (x) (funcall x))
  (cleavir-compile 'tret2 '(lambda () (print (foo (lambda () (return-from (print "a"))))))
(tret)


clasp-cleavir:*tags*
clasp-cleavir:*basic-blocks*

(loop with x = nil
     do (print "Hello"))

(trace clasp-cleavir:compute-landing-pads)
(core:getpid)581
(tup)


clasp-cleavir-ast-to-hir:*landing-pad*

(tagbody (ff (lambda () (go a)) a))


(tagbody (print "t-a") (core:funwind-protect (lambda () (print "p-a") (go foo) (print "p-b")) (lambda () (print "c-a"))) (print "t-b") foo (print "t-c"))
"t-a" 
"p-a" 
"c-a" 
"t-c"


(hoisted-hir-form '(lambda () (tagbody a (print "a") b (print "b") c (function (lambda () (go a))))))

(hoisted-hir-form '(lambda () (progn (print "Hello") (block a #'(lambda () (print "inner")(return-from a))))))
(apropos "cleanup-ast")
(apropos "enter-instruction")


(in-package :clasp-cleavir)

(trace cmp::codegen-rtv/all)
(cleavir-compile 't2 '(lambda (x) (* x 2)))
(core:load-time-values-dump-symbols "<compile>" 523)
(t2 16) -> 32

(cleavir-compile 'hyp '(lambda (x y) (sqrt (+ (* x x) (* y y)))))
(hyp 2 3) --> 3.60555

(cleavir-compile 'cmp '(lambda (x y) (if (eq x y) "same" "different")))
(cmp 'a 'a) 

(cleavir-compile 'cloop '(lambda (x) (dotimes (i x) (print i))))
(cloop 10)

(cleavir-compile 'uwpr '(lambda (x) (unwind-protect (print "A") (print "B"))))

(defvar *a* 1)

(ast-form '(lambda (x) (let ((*a* 2)) (format t "inner *a* = ~a~%" *a*)) (format t "outer *a*=~a~%" *a*)))

(trace cleavir-generate-ast:convert-special-binding)

(cleavir-compile 'spectest '(lambda (x) (let ((*a* 2)) (format t "inner *a* = ~a~%" *a*)) (format t "outer *a*=~a~%" *a*)))
(llvm-sys:cxx-data-structures-info)

(core:low-level-backtrace)
(apropos "ihs-")
(core::ihs-env 73)

(a 1)


(cleavir-compile 'a '(lambda (x y) (let ((res (+ x y))) res)))
(cleavir-compile 'a '(lambda () (multiple-value-bind () nil)))

(a) -->  42324823482938492834982343234234

(core:load-time-values-dump-values "<default>" 1853)
(print cmp::*run-time-literal-holder*)
(apropos "run-time")
(core:load-time-values-ids)

(ast-form '(lambda () (unwind-protect (print "protected") (print "cleanup1"))))
(hoisted-ast-form '(lambda (x) (+ 1 (- 123123434182312310 x))))
(hoisted-mir-form '(lambda (x) (+ 1 x)))
(hoisted-hir-form '(lambda (x) #'(lambda (y) (+ x y 1))))
(trace (setf cleavir-ir:predecessors))



(compile 'a '1)

(apropos "run-time-literal")
cmp::*run-time-literals-external-name*
(core:load-time-values-dump "globalRunTime")


(trace cleavir-ast-graphviz:label)

(print "Hello")

(with-output-to-string (s) (loop for c across "\"abcdef\"" do (if (eql c #\") (princ "\"" s) (princ c s))))
(with-output-to-string (s) (loop for c across "\"abcdef\"" do (when (member c '(#\\ #\")) (princ #\\ s)) (princ c s)))

(constantp "this is")


*debug-basic-blocks*

(node-predecessors *hir*)


(print *hir*)
(typep *hir* 'cleavir-ir:enter-instruction)
*hir*

(apropos "enter-instruction")


(class-of *hir*)
(print *debug-basic-blocks*)

(cleavir-basic-blocks:basic-blocks *hir*)


(defun node-predecessors (top)
  (let ((table (make-hash-table :test #'eq)))
    (labels ((traverse (node)
	       (when (null (gethash node table))
		 (setf (gethash node table) t)
		 (format t "node: ~a   predecessors: ~a~%" node (cleavir-ir:predecessors node))
		 (let ((succs (cleavir-ir:successors node)))
		   (if (typep node 'cleavir-ir:unwind-instruction)
		       (traverse (first succs))
		       (loop for successor in (cleavir-ir:successors node)
			  do (traverse successor)))
		   (when (typep node 'cleavir-ir:enclose-instruction)
		     (traverse (cleavir-ir:code node)))))))
      (traverse top))))



(defun node-with-write-cell-predecessors (top)
  (let ((table (make-hash-table :test #'eq)))
    (labels ((traverse (node)
	       (when (null (gethash node table))
		 (setf (gethash node table) t)
		 (format t "node: ~a   predecessors: ~a~%" node (cleavir-ir:predecessors node))
		 (let ((succs (cleavir-ir:successors node)))
		   (if (typep node 'cleavir-ir:unwind-instruction)
		       (traverse (first succs))
		       (loop for successor in (cleavir-ir:successors node)
			  do (traverse successor)))
		   (when (typep node 'cleavir-ir:enclose-instruction)
		     (traverse (cleavir-ir:code node)))))))
      (traverse top))))


(node-predecessors *hir*)


(typep *hir* 'cleavir-ir:enter-instruction)

(apropos "debug-basic-blocks")

clasp-cleavir:*basic-blocks*

(core:debug-hash-table t)
(core:getpid)

(defclass foo () ())
(defparameter v1 (make-instance 'foo))
(defparameter v2 (make-instance 'foo))
(defparameter ht (make-hash-table :test #'equal))
(setf (gethash (cons v1 v2) ht) '1-2)
(setf (gethash (cons v1 v1) ht) '1-1)
(setf (gethash (cons v2 v1) ht) '2-1)
(setf (gethash (cons v2 v2) ht) '2-2)
(progn (core:debug-hash-table t)(prog1 (gethash (cons v2 v1) ht) (core:debug-hash-table nil))) ; --> |2-1|

(gethash (cons v1 v1) ht) ; --> |1-1|



ht
ht

(untrace gethash)

core:*assert-failure-test-form*


(format t "~S" (every (lambda (x) )))
(core::assert-failure '(every (lambda (x))))
(apropos "assert-failure")
(apropos "*print-")

(pprint '(progn 
	  (load "testing") 
	  (defclass foo () ((a :initarg :a :accessor foo-a)))
	  (defun foo () (assert (every (lambda (x) (typep x 'integer)) '(1 2 3 a))))
	  (apropos "enter-instruction")))
(find-class 'cleavir-ir:top-level-enter-instruction)#<COMMON-LISP:STANDARD-CLASS CLEAVIR-IR:TOP-LEVEL-ENTER-INSTRUCTION 0x10db804c8>


(core:getpid)
(print "Hello")

(in-package :clasp-cleavir)

(cleavir-compile nil '(lambda (x) (+ x x)))


(llvm-sys:dump cmp::*the-module*)


cmp::*dbg-current-file*
cmp::*dbg-generate-dwarf*

(apropos "cleavir-compile")

(apropos "cleavir")


(apropos "internal-linkage")

(core:low-level-backtrace)


(asdf:load-system :clasp-cleavir)

(generate-hir-for-clasp-source)
*hir-single-step*

(hir-form 1)
(translate *hir*)

*basic-blocks*
*tags*
*vars*




(hir-form '(lambda (x &optional (y 0)) (+ x y)))

(draw-hir)

(draw-mir)

*mir*


(core:getpid)

(hir-form '(let ((y 100) (z 200) ) #'(lambda (x) (list x y z))))

(defparameter *a* 1)
(defparameter *b* 2)

(mir-form '(lambda (x y) (list x y)))
(hir-form '(let ((x 100)) (tagbody top (setq x (1- x)) (if (eql x 0) (go done)) (go top) done)))
*hir*

(hir-form 1)

(defun foo (x x) x)

(foo 1 2)





(cleavir-compile 'tcl '(lambda (max) (let ((x 0)) (dotimes (i max) (setq x (+ i x ))) (print x))))

(tcl 10)




(defmacro defun (&whole whole name vl &body body &environment env)
  ;; Documentation in help.lsp
  (multiple-value-bind (decls body doc-string) 
      (core:process-declarations body t)
    (let* ((doclist (when doc-string (list doc-string)))
	   (global-function (compile nil `(lambda ,vl 
					   (declare (core:lambda-name ,name) ,@decls) 
					   ,@doclist (block ,(si::function-block-name name) ,@body)))))
      ;;(bformat t "DEFUN global-function --> %s\n" global-function )
      `(progn
	 ,(ext:register-with-pde whole `(si::fset ',name ,global-function))
	 ,@(si::expand-set-documentation name 'function doc-string)
	 ',name))))
(defun a (x y) (+ x y))


(room)
