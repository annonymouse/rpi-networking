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

I cribbed the setupnetwork.ps1 from this superuser post
http://superuser.com/questions/470319/how-to-enable-internet-connection-sharing-using-command-line
as they had powershell installed

Fundamentally, I'm using internet sharing, and static IP's on the Pi.  In
addition I install some things I needed like vnc.
Prerequisites
=============
The Pi should have already been configured to use a static address in the
192.168.137.-- range

Use the deploy script as
    sudo ./deploy.sh
on the pi to configure it correctly.

References
==========

http://www.raspberrypi.org/documentation/remote-access/vnc/
http://superuser.com/questions/470319/how-to-enable-internet-connection-sharing-using-command-line
http://stackoverflow.com/questions/4619088/windows-batch-file-file-download-from-a-url
http://ss64.com/nt/netsh.html
https://anwaarullah.wordpress.com/2013/08/12/sharing-wifi-internet-connection-with-raspberry-pi-through-lanethernet-headless-mode/
