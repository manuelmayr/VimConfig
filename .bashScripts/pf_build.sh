#!/usr/bin/env bash
            
export PFPREFIX="$HOME/Science/Pathfinder"

# setting the pythonpath
export PYTHONPATH="${PFPREFIX}/$(python -c 'import distutils.sysconfig; print distutils.sysconfig.get_python_lib(0,0,"")'):$PYTHONPATH"

