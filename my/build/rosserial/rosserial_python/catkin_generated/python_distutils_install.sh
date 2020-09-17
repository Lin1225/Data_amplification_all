#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lab/Documents/Data_reforement_code/my/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lab/Documents/Data_reforement_code/my/install/lib/python2.7/dist-packages:/home/lab/Documents/Data_reforement_code/my/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lab/Documents/Data_reforement_code/my/build" \
    "/usr/bin/python2" \
    "/home/lab/Documents/Data_reforement_code/my/src/rosserial/rosserial_python/setup.py" \
    build --build-base "/home/lab/Documents/Data_reforement_code/my/build/rosserial/rosserial_python" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/lab/Documents/Data_reforement_code/my/install" --install-scripts="/home/lab/Documents/Data_reforement_code/my/install/bin"
