# hunter_se
repo for holding code for runnng the hunter_se vehicle

src/ has ros files for outster, Trimble GPS, Lord IMU and Hunter Can Connection (hunter Ros is wrapper, ugv_sdk is direct can interface)

To run first format the can connecton to read/send messages to motors

```
rosrun hunter_bringup bringup_can2usb.bash
```

Then launch all the sensor nodes with the launch file:

```
roslaunch hunter_bringup hunter_sensor
```

This launch file will also record a rosbag @ /media/arpg/s.../bag


