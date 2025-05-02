; HTML Elements as Classes
(element) @class.around

; Capture content between start and end tag. 
; This might need refinement based on the exact HTML grammar used via injection.
(element
  (start_tag)
  (_) @class.inside
  (end_tag))

; Django Paired Statements as Functions
(paired_statement) @function.around
(if_statement) @function.around
(for_statement) @function.around
(filter_statement) @function.around

; Capture content inside Django paired statements
(paired_statement
  "{%"
  (_)* @function.inside
  (end_paired_statement))
(if_statement
  "{%"
  (_)* @function.inside
  (end_paired_statement))
(for_statement
  "{%"
  (_)* @function.inside
  (end_paired_statement))
(filter_statement
  "{%"
  (_)* @function.inside
  (end_paired_statement))

; Comments
(unpaired_comment) @comment.around
(paired_comment) @comment.around

; Capture content inside paired comment
(paired_comment
  "comment"
  (_)* @comment.inside
  "endcomment") 