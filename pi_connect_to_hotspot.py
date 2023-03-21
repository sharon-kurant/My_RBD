from djitellopy import Tello
# import socket   

tello = Tello()
tello.connect()
tello.connect_to_wifi('Pixel_7838', 'f9104cbc1c25')

# after tello connects to wifi -> nmap to get its ip address
# Might need to rerun the program only with commands below

tello = Tello('192.168.167.127')
tello.connect()

tello.takeoff()
tello.rotate_counter_clockwise(90)
tello.land()
