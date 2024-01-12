(define-module (gnu packages andy)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system asdf)
  #:use-module (guix build-system copy)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix gexp)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages lisp)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages lisp-check)
  #:use-module (gnu packages lisp-xyz))



(define-public sbcl-bt-semaphore
    (let ((commit "46b4bf315590f510d2d4ec5ca8908efbe68007e9"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "bt-semaphore")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/r-moeritz/bt-semaphore")
                     (commit commit)))
              (sha256 
                (base32 "0rl7yp36225z975hg069pywwlpchwn4086cgxwsi2db5mhghpr7l"))
              (file-name (git-file-name "bt-semaphore" version))))
          (build-system asdf-build-system/source)
          (inputs
            (list cl-bordeaux-threads)))))

(define-public sbcl-lem-mailbox
    (let ((commit "12d629541da440fadf771b0225a051ae65fa342a"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "lem-mailbox")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/lem-project/lem-mailbox")
                     (commit commit)))
              (sha256 
                (base32 "1qh9yq9ks0paplmbx0vj4nynx86igkv9kli396plpg9vc14qdgl5"))
              (file-name (git-file-name "lem-mailbox" version))))
          (build-system asdf-build-system/source)
          (inputs
            (list cl-bordeaux-threads
                  sbcl-bt-semaphore
                  cl-queues)))))

(define-public sbcl-lem-base16-themes
    (let ((commit "74335ff78a357866337092a9918379e34716e118"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "lem-base16-themes")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/lukpank/lem-base16-themes")
                     (commit commit)))
              (sha256 
                (base32 "04hrhwv4dy3k1npmw19d63pp76rwyc3zrhjc03bxvfmvn3x93278"))
              (file-name (git-file-name "sbcl-lem-base16-themes" version))))
          (build-system asdf-build-system/source))))

(define-public sbcl-lem-async-process
    (let ((commit "9690530fc92b59636d9f17d821afa7697e7c8ca4"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "lem-async-process")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/lem-project/async-process")
                     (commit commit)))
              (sha256 
                (base32 "1m2sfgfg6c0gqqy1pqsahsiw3j25y473mfw7sx0akkqbhwhm7mjb"))
              (file-name (git-file-name "sbcl-lem-async-process" version))))
          (build-system asdf-build-system/source))))

; (define-public sbcl-qlot
;     (let ((commit "8e3d533a8aae864cb5a146a256fc688e27ea239f"))
;         (package
;         (name "qlot")
;         (version "1.2")
;         (source
;                 (origin
;                   (method git-fetch)
;                   (uri (git-reference
;                          (url "https://github.com/fukamachi/qlot")
;                          (commit commit)))
;                   (sha256 
;                     (base32 "021mi14v6fs01y5d84grfrkc6adfyld4khigr42lkhhahjmwpx3l"))
;                   (file-name (git-file-name "sbcl-qlot" version))))
;         (build-system copy-build-system)
;         (arguments
;           (list 
;             #:phases
;             #~(modify-phases %standard-phases
;                 (add-after 'unpack 'build
;                     (lambda _
;                       (invoke "ls" "-lah" "scripts")
;                       (invoke "cat" "scripts/setup.sh")
;                       (invoke "chmod" "+x" "scripts/setup.sh")
;                       (invoke "./scripts/setup.sh")
;                       (invoke "mv" "./scripts/run.sh" "./scripts/qlot")
;                       (invoke "chmod" "+x" "./scripts/qlot"))))))
;         (inputs 
;           (list openssl
;                 sbcl))
;         (synopsis "Lem is an IDE for common lisp")
;         (description "IDE for common lisp yay")
;         (home-page "https://www.gnu.org/software/hello/")
;         (license license:gpl3+))))

(define-public sbcl-sblint
    (let ((commit "1037296f604c3210ce073a53539d4ae95b0c2f8c"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "sblint")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/cxxxr/sblint")
                     (commit commit)))
              (sha256 
                (base32 "1d3yhx1yi5wz7by2n3y5ndvvvi5pz7jclpirhf9afzyslr4v0xxl"))
              (file-name (git-file-name "sbcl-sblint" version))))
          (build-system asdf-build-system/source))))

(define-public sbcl-micros
    (let ((commit "6caada08e3e0f6e9389142d7a96f8685923a9e81"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "micros")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/lem-project/micros")
                     (commit commit)))
              (sha256 
                (base32 "1amf1n5n72gc1pns59g3lq36nghcgif5ipsahjx1m9pmy0xpvhcz"))
              (file-name (git-file-name "sbcl-micros" version))))
          (arguments
            (list
              #:phases
              #~(modify-phases %standard-phases
                 (add-after 'unpack 'override-ql
                   (lambda* _
                        (substitute* (find-files (getcwd) "\\.lisp$")
                                     (("ql:quickload") "asdf:load-system")))))))
          (build-system asdf-build-system/sbcl))))

(define-public sbcl-inquisitor
    (let ((commit "423fa9bdd4a68a6ae517b18406d81491409ccae8"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "inquisitor")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/t-sin/inquisitor")
                     (commit commit)))
              (sha256 
                (base32 "08rkmqnwlq6v84wcz9yp31j5lxrsy33kv3dh7n3ccsg4kc54slzw"))
              (file-name (git-file-name "sbcl-inquisitor" version))))
          (inputs (list sbcl-anaphora
                        sbcl-prove
                        sbcl-babel
                        sbcl-alexandria))
          (build-system asdf-build-system/sbcl))))

(define-public sbcl-jsonrpc
    (let ((commit "1ad24f10a84030dfc58a7a38d7469d840ec32e62"))
        (package
          (version "1.0")
          (synopsis "thing")
          (description "thingy")
          (license license:gpl3+)
          (home-page "https://lem.org")
          (name "jsonrpc")
          (source
            (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/cxxxr/jsonrpc")
                     (commit commit)))
              (sha256 
                (base32 "0xannh5yxjwcvvfrlz9w630v8f4gbnhz9mblda9lymv1jh3j1jvw"))
              (file-name (git-file-name "sbcl-jsonrpc" version))))
          (inputs (list sbcl-yason
                        sbcl-rove
                        sbcl-chanl
                        sbcl-quri
                        sbcl-fast-io
                        sbcl-trivial-utf-8
                        sbcl-websocket-driver
                        sbcl-dissect
                        sbcl-vom
                        sbcl-cl+ssl
                        sbcl-usocket
                        sbcl-bordeaux-threads
                        sbcl-event-emitter))
          (build-system asdf-build-system/sbcl))))

(define-public lem
    (let ((commit "7aadfce7f308e2808c24076c785ec05132598a4f"))
      (package
        (name "lem")
        (version "1.2")
        (source
                (origin
                  (method git-fetch)
                  (uri (git-reference
                         (recursive? #t)
                         (url "https://github.com/lem-project/lem")
                         (commit commit)))
                  (sha256 
                    (base32 "0a1n1jznc0hc8lngmn5vlpnmw1xmw2vv1cgxp3a59f7qc5bd0smr"))
                  (file-name (git-file-name "sbcl-lem" version))))
        (build-system asdf-build-system/sbcl)
        (outputs '("out" "lib"))
        (arguments
          (list
            #:asd-systems (list "lem-sdl2" "lem-base")
            #:phases
            #~(modify-phases %standard-phases
                             (add-after 'unpack 'override-ql
                                        (lambda* _
                                                 (substitute* (find-files (getcwd) "\\.lisp$")
                                                              (("ql:quickload") "asdf:load-system"))))
                             (add-after 'override-ql 'redirect-home
                                        (lambda _
                                          (setenv "HOME" "/tmp")))
                             (add-after 'create-asdf-configuration 'build-program
                                        (lambda* (#:key outputs #:allow-other-keys)
                                                 (build-program
                                                   (string-append (assoc-ref outputs "out") "/bin/lem")
                                                   outputs
                                                   #:entry-program '((lem:main) 0)))))))
        (inputs
          (list cl-sdl2
                cl-sdl2-image
                cl-sdl2-ttf
                cl-rove
                cl-closer-mop
                git
                cl-trivia
                cl-trivial-types
                cl-package-locks
                sbcl-lem-mailbox
                sbcl-bt-semaphore
                sbcl-lem-base16-themes
                sbcl-lem-async-process
                sbcl-micros
                sbcl-inquisitor
                sbcl
                sbcl-yason
                sbcl-log4cl
                sbcl-split-sequence
                sbcl-cl-str
                cl-bordeaux-threads
                cl-queues
                sbcl-dexador
                sbcl-sblint))
        (native-inputs
          (list cl-sdl2
                cl-sdl2-image
                cl-sdl2-ttf
                cl-rove
                cl-closer-mop
                cl-trivia
                cl-trivial-types
                sbcl-lem-mailbox
                sbcl-bt-semaphore
                sbcl-lem-base16-themes
                sbcl-lem-async-process
                sbcl-micros
                sbcl-inquisitor
                sbcl-jsonrpc
                sbcl-esrap
                sbcl-parse-number
                sbcl
                sbcl-yason
                sbcl-log4cl
                sbcl-split-sequence
                sbcl-cl-str
                cl-bordeaux-threads
                cl-queues
                sbcl-dexador
                sbcl-sblint))
        (propagated-inputs
          (list 
            sbcl
            cl-sdl2
            cl-sdl2-image
            cl-sdl2-ttf))
        (synopsis "Lem is an IDE for common lisp")
        (description "IDE for common lisp yay")
        (home-page "https://www.gnu.org/software/hello/")
        (license license:gpl3+))))

lem
