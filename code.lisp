;;10

(defun removeLast (list)
    (cond
        ((null (cdr list)) nil)
        (t (cons (car list) (removeLast (cdr list))))
    )
)

(defun ten (list cnt)
    (cond
        ((= cnt 0) list)
        (t (seven (removeLast list) (- cnt 1)))
    )
)

;;24

(defun getLast (list)
    (cond
        ((null (cdr list)) (car list))
        (t (getLast (cdr list)))
    )
)

(defun removeLast (list)
    (cond
        ((null (cdr list)) nil)
        (t (cons (car list) (removeLast (cdr list))))
    )
)

(defun twenty_four (list)
    (cond
        ((null (cdr list)) list)
        (t (list (twenty_four (removeLast list)) (getLast list)))
    )
)

;;31

(defun contains (elem list)
    (cond
        ((null list) nil)
        ((= elem (car list)) T)
        (t (contains elem (cdr list)))
    )
)

(defun thirty_one (list1 list2)
    (cond
        ((null list1) nil)
        ((null list2) nil)
        ((contains (car list1) list2) (car list1))
        ((contains (car list2) list1) (car list2))
        ((null (cdr list1)) nil)
        ((null (cdr list2)) nil)
        (t (thirty_one (cdr list1) (cdr list2)))
    )
)

;;38

(defun contains (elem list)
    (cond
        ((null list) nil)
        ((= elem (car list)) T)
        (t (contains elem (cdr list)))
    )
)

(defun thirty_eight (list1 list2)
    (cond
        ((null list1) list2)
        ((null list2) list1)
        ((not (contains (car list2) list1)) (thirty_eight (cons (car list2) list1) (cdr list2)))
        (t (thirty_eight list1 (cdr list2)))
    )
)

;;45

(defun fourty_five (x1 y1 x2 y2)
    (sqrt (+ (* (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1))))
)

;;4

(defun four (n)
    (cond
        ((= n 0) '())
        (t (cons n (four (- n 1))))
    )
)