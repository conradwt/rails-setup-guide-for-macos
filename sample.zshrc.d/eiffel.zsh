# set variables for EiffelStudio.
export ISE_PLATFORM=macosx-x86-64
export ISE_EIFFEL=/Applications/MacPorts/Eiffel_18.01
export GOBO=${ISE_EIFFEL}/library/gobo/svn
export PATH=${PATH}:${ISE_EIFFEL}/studio/spec/$ISE_PLATFORM/bin:${GOBO}/../spec/${ISE_PLATFORM}/bin
