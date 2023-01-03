git submodule add https://github.com/blakeNaccarato/copier-python.git template
git submodule add https://github.com/blakeNaccarato/pylance-stubs-unofficial.git typings
copier copy template .
git submodule deinit --all
Remove-Item first_time_setup.ps1
