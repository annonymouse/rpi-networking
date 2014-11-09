Raspberry Pi Direct Network Connection with Windows
===================================================
I needed to make some windows laptops talk to a RaspberryPi directly connected
via ethernet.  The RaspberryPi (thank $deity) supports auto-sensing so no need
for speshul cables.  It then shares the existing network connection of the
laptops wifi with the Pi so that the Pi has access to the internet (and the
rest of the network the laptop has access to).  It also installs putty for good
measure and tells you the hostname of the Pi attached as that's the workflow I
wanted.

This was tested on Winblows 7 Pirate Edition.

No judgement as my windows script-fu is limited to a summer internship writing
VBA and not much else.  I seriously considered giving them usb sticks running
Ubuntu in order to make this faster, but without having the laptops to hand I
couldn't guarantee that they'd work with the wireless -- and also I ran out of
time.  Mostly time.  If I ever have to do this again I'm definitely setting that
up.

Prerequisites
=============
The Pi should have already been configured to use link-local ipv4 addressing --
this will all make sense in a jiffy.

References
==========

http://stackoverflow.com/questions/4619088/windows-batch-file-file-download-from-a-url
http://ss64.com/nt/netsh.html

