# httpdmonitor
Apache process number monitor

This bash script monitors the number of running `httpd` processes and writes info messages to the standard output.
It also restarts Apache if the number of running processes exceeds the maximum threshold.

0. If the number of `httpd` processes is less than 10, then it prints out `[LOW] Web Server OK!`.
0. If the number of `httpd` processes is greater than 20, then it prints out `[HIGH] Web Server Working hard!`.
0. If the number of `httpd` processes is greater than 100, then it prints out `[CRITICAL] Web Server under heavy load, restart required`.
0. If a `[CRITICAL]` threshold is met, then it restarts `httpd` service.

Assumptions
-----------

Parent `httpd` process is included in computation of the total number of running processes.

Requirements
------------

This bash script should be run by `root` or superuser in order to be able to restart Apache.

Usage
-----

```
./monitor.sh
```
