git submodule add https://github.com/blakeNaccarato/copier-python.git template
git submodule add https://github.com/blakeNaccarato/pylance-stubs-unofficial.git typings
copier -f -r $(git rev-parse HEAD:template)
git submodule deinit --all
Remove-Item first_time_setup.ps1
