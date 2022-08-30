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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/arpg/hunter_ws/src/nmea_tcp_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/arpg/hunter_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/arpg/hunter_ws/install/lib/python3/dist-packages:/home/arpg/hunter_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/arpg/hunter_ws/build" \
    "/usr/bin/python3" \
    "/home/arpg/hunter_ws/src/nmea_tcp_driver/setup.py" \
     \
    build --build-base "/home/arpg/hunter_ws/build/nmea_tcp_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/arpg/hunter_ws/install" --install-scripts="/home/arpg/hunter_ws/install/bin"
