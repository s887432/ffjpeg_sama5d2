// ****************************************************************************
ffjpeg jpeg encode, decode and example
The open source library from https://github.com/rockcarry/ffjpeg
The Makefile was modified by Patrick Lin to fit sama5d2 environment in Linux
// ****************************************************************************

// ****************************************************************************
This library works fine in SAMA5D2-xplained board.
It takes following time to encode a 640x480 file.
0.16154 sec to load bitmap file
0.616412 sec to compress into jpeg format
0.169 sec to save jpeg data into file

It takes following time to encode a 160x90 file.
0.1989 sec to load bitmap file
0.25851 sec to compress into jpeg format
0.4683 sec to save jpeg data into file

It takes following time to decode a 160x90 file.
0.1909 sec to load bitmap file
0.20716 sec to compress into jpeg format
0.161 sec to save jpeg data into file

needs to optimize.
Those tests are done in Linux4Sam V5.8.

Patrick Lin. 2018/10/16
// ****************************************************************************
