# snort_alert_counter
This is simple alert counter of Snort Network Intrusion Detection System.
You can count the alert base on Content alert or SID (Signature Identification$
There is 3 format that we could count "Alert Full", "Alert Fast" and "Alert CS$
> I'm assuming we've already familiar and understand how to deploy and use Sno$
This is the first place you must visit, how to instal and deploy Snort [snort $
> I suggested to install Snort through package manager

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
