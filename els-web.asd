#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(asdf:defsystem els-web
  :version "3.0.0"
  :license "Artistic"
  :author "Nicolas Hafner <shinmera@tymoon.eu>"
  :maintainer "Nicolas Hafner <shinmera@tymoon.eu>"
  :description "Tools to generate the European Lisp Symposium's website."
  :homepage "https://github.com/Shinmera/els-web"
  :serial T
  :components ((:file "package")
               (:file "toolkit")
               (:file "secret")
               (:file "timestamp")
               (:file "edition")
               (:file "compiler")
               (:module "editions"
                :components ((:file "frontpage")
                             (:file "2015")
                             (:file "2017"))))
  :depends-on (:clip
               :local-time
               :pathname-utils
               :alexandria
               :cl-who
               :cl-ppcre
               :named-readtables))
