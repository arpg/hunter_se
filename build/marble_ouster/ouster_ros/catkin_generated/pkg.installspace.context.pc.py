# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3;/usr/include".split(';') if "${prefix}/include;/usr/include/eigen3;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_runtime;pcl_ros;std_msgs;sensor_msgs;geometry_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-louster_ros;/usr/lib/aarch64-linux-gnu/libglfw.so.3.3;/usr/lib/aarch64-linux-gnu/libGLEW.so".split(';') if "-louster_ros;/usr/lib/aarch64-linux-gnu/libglfw.so.3.3;/usr/lib/aarch64-linux-gnu/libGLEW.so" != "" else []
PROJECT_NAME = "ouster_ros"
PROJECT_SPACE_DIR = "/home/arpg/hunter_ws/install"
PROJECT_VERSION = "0.1.0"
