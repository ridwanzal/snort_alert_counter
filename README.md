# snort_alert_counter
This is simple alert counter of Snort Network Intrusion Detection System.
You can count the alert base on Content alert or SID (Signature Identification)
There is 3 format that we could count "Alert Full", "Alert Fast" and "Alert CSV.
> I'm assuming we've already familiar and understand how to deploy and use Snort in general
> Setup, configuration and run the system


### This is the first place you must visit, how to install and deploy Snort [snort official](http://snort.org)
###  For deep understanding about Snort itself, you could read the manual version [Snort 2.9.5](http://187.7.106.14/emmonks/seguranca3/Pratica5/snort_manual.pdf)

> I suggested to install Snort through package manager (apt,yum,zypper)

How to use

* First open the script with your favorite editor
* Set the path of the alert file *example below

```
file=/var/log/snort/alert
```

* Then, execute the script

```
# ./snort_alert_couter.sh
```

Thanks - M. Ridwan Zalbina
