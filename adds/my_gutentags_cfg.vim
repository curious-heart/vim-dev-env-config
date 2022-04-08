"Gutentags configuration BEGIN ++++
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--kinds-C++=+px']  
let g:gutentags_ctags_extra_args += ['--kinds-C=+px']
let g:gutentags_ctags_extra_args = ['--fields-Python=+{decorators}']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
silent! call mkdir(s:vim_tags, 'p')
endif
"Gutentags configuration END ---- 
