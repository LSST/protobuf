# EupsPkg config file. Sourced by 'eupspkg'

build()
{
    default_build

    cd python
    python setup.py build
}

install()
{
    default_install

    PYDEST="$PREFIX/lib/python"
    mkdir -p "$PYDEST"
    cd python
    PYTHONPATH="$PYDEST:$PYTHONPATH" eval python setup.py install $PYSETUP_INSTALL_OPTIONS
}
