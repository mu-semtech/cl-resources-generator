(in-package :resources-generator)

(defun all-resources ()
  (loop for val being
     the hash-values of mu-cl-resources::*resources*
     collect val))

(defun generate-resource (resource)
  "Returns the generator for the specific resource"
  (format nil "edi ember g mu-resource ~A ~{~A ~}~{~A:belongsTo ~}~{~A:hasMany~,^ ~}"
          (gen-resource-name resource)
          (mapcar #'gen-resource-slot (mu-cl-resources::ld-properties resource))
          (mapcar #'mu-cl-resources::request-path (mu-cl-resources::has-one-links resource))
          (mapcar #'mu-cl-resources::request-path (mu-cl-resources::has-many-links resource))))

(defun generate-resources ()
  (format t "~{~A~^ && ~}"
          (mapcar #'generate-resource (all-resources))))

(defun gen-resource-name (resource)
  (string-downcase (mu-cl-resources::resource-name resource)))

(defun gen-resource-slot (property)
  (format nil "~A:~A"
          (string-downcase (symbol-name (mu-cl-resources::json-key property)))
          (string-downcase (symbol-name (mu-cl-resources::resource-type property)))))
