// ****************************************************************************<br>
ffjpeg<br>
The open source library from https://github.com/rockcarry/ffjpeg<br>
The Makefile was modified by Patrick Lin to fit sama5d2 environment in Linux<br>
// ****************************************************************************<br>
<br>
// ****************************************************************************<br>
This library works fine in SAMA5D2-xplained board.<br>
It takes following time to encode a 640x480 file.<br>
0.16154 sec to load bitmap file<br>
0.616412 sec to compress into jpeg format<br>
0.169 sec to save jpeg data into file<br>
<br>
It takes following time to encode a 160x90 file.<br>
0.1989 sec to load bitmap file<br>
0.25851 sec to compress into jpeg format<br>
0.4683 sec to save jpeg data into file<br>
<br>
It takes following time to decode a 160x90 file.<br>
0.1909 sec to load bitmap file<br>
0.20716 sec to compress into jpeg format<br>
0.161 sec to save jpeg data into file<br>
<br>
needs to optimize.<br>
Those tests are done in Linux4Sam V5.8.<br>
<br>
Patrick Lin. 2018/10/16<br>
// ****************************************************************************<br>
<br>
