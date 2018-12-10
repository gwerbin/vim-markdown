command! -count=1 MarkdownCurrentLineMakeHeaderSetext :call markdown#MakeHeaderSetext('.', <count>)
command! -count=1 MarkdownCurrentLineMakeHeaderATX :call markdown#MakeHeaderATX('.', <count>)
