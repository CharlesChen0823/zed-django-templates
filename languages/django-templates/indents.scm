; Indent for HTML tags
(element
  (start_tag) @indent.begin
  (end_tag) @indent.end)

(script_element
  (start_tag) @indent.begin
  (end_tag) @indent.end)

(style_element
  (start_tag) @indent.begin
  (end_tag) @indent.end)

; Indent for Django paired tags
(paired_statement
  "{%" @indent.begin
  (end_paired_statement) @indent.end)

(if_statement
  "{%" @indent.begin
  (end_paired_statement) @indent.end)

(for_statement
  "{%" @indent.begin
  (end_paired_statement) @indent.end)

(filter_statement
  "{%" @indent.begin
  (end_paired_statement) @indent.end)

(paired_comment
  "{%" @indent.begin
  "endcomment" @indent.end)

; Handle branches within statements
(branch_statement) @indent.branch

; Adjust indentation relative to parent HTML tag
(element
  (_) @indent.align)

; Ignore comments and expression delimiters for indentation logic
"<!--" @indent.ignore
(unpaired_comment) @indent.ignore
"{{" @indent.ignore
"}}" @indent.ignore
"{#" @indent.ignore
"#}" @indent.ignore 