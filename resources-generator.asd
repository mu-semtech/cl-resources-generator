(asdf:defsystem :resources-generator
  :name "mu-cl-resources"
  :author "Aad Versteden <madnificent@gmail.com>"
  :version "0.0.1"
  :maintainer "Aad Versteden <madnificent@gmail.com>"
  :licence "MIT"
  :description "Snippet which outputs the generator commands to be built on top of mu-cl-resources."
  :serial t
  :depends-on (mu-cl-resources)
  :components ((:file "packages")
               (:file "resources-generator")))
