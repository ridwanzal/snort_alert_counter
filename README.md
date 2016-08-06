# snort_alert_counter
This is simple alert counter of Snort Network Intrusion Detection System.
You can count the alert base on Content alert or SID (Signature Identification) of the rules.
There is 3 format that we could count "Alert Full", "Alert Fast" and "Alert CSV"
> I'm assuming we've already familiar and understand how Snort works.


How to use
* First open the script
* Set the path of the alert file *example
```
file=/var/log/snort/alert
```
* execute the program
```
./snort_alert_couter.sh
```
