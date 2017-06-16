" From $VIMRUNTIME/syntax/syncolor.vim
if !exists("syntax_cmd") || syntax_cmd == "on"
  " ":syntax on" works like in Vim 5.7: set colors but keep links
  command -nargs=* SynColor hi <args>
  command -nargs=* SynLink hi link <args>
else
  if syntax_cmd == "enable"
    " ":syntax enable" keeps any existing colors
    command -nargs=* SynColor hi def <args>
    command -nargs=* SynLink hi def link <args>
  elseif syntax_cmd == "reset"
    " ":syntax reset" resets all colors to the default
    command -nargs=* SynColor hi <args>
    command -nargs=* SynLink hi! link <args>
  else
    " User defined syncolor file has already set the colors.
    finish
  endif
endif

SynLink rubyDefine              Define
SynLink rubyAccess              rubyMacro
SynLink rubyAttribute           rubyMacro
SynLink rubyMacro               Macro
SynLink rubyEval                Statement
SynLink rubyException           Exception
SynLink rubyInclude             Include
SynLink rubyRegexp              rubyString
SynLink rubyRegexpDelimiter     rubyStringDelimiter
SynLink rubyStringDelimiter     Delimiter
SynLink rubySymbol              Constant

SynLink javaScriptRegexpString  String
SynLink javaScriptNumber        Number
SynLink javaScriptNull          Constant

SynLink diffRemoved             Special
SynLink diffAdded               Identifier
SynLink diffLine                Statement
SynLink diffSubname             PreProc

delcommand SynColor
delcommand SynLink
