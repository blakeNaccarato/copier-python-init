$original = Get-Content -Delimiter \0 -Path .copier-answers.yml
$replace_commit = 'gh:blakeNaccarato/copier-python-whatup'

$lookbehind_commit = '(?<=_commit: )'  # (have to use \s instead of \n)
$replace_commit = 'ff386ef5ab001a54e25d9ffafb6305cad402de7b'

$lookbehind_repo = '(?<=_src_path: )'  # (have to use \s instead of \n)
$replace_repo = 'gh:blakeNaccarato/copier-python'

$match = '\S+'  # anything in-between
$lookahead = '(?=\s)'  # "#]]\n" (have to use \s instead of \n)

$original = $original -replace "$lookbehind_commit$match$lookahead", $replace_commit
$original = $original -replace "$lookbehind_repo$match$lookahead", $replace_repo |
    Set-Content -NoNewline -Path test
