; Django Template tags
("{{" @open "}}" @close)
("{%" @open "%}" @close)
("{#" @open "#}" @close)

; Standard HTML/Programming brackets
("(" @open ")" @close)
("[" @open "]" @close)
("{" @open "}" @close) ; Note: these might conflict inside JS/CSS if not handled by injections
("<") @open (">") @close

; Quotes
("\"" @open "\"" @close)
("'" @open "'" @close) 