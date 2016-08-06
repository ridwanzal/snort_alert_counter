#LOGGER SHELL SNORT - ALERT COUNTER
#PROGRAM PENUNJANG PENELITIAN
#TUGAS AKHIR JURUSAN SISTEM KOMPUTER
#JUDUL : SISTEM DETEKSI HTTP MENGGUNAKAN HTTP INSPECT PREPROCESSOR DAN RULE OPTIONS
#RELEASE : JANUARI 2016



#!/bin/bash


#GLOBAL PATH OF LOG FILE
file=/media/reyridrif4/TUGAS_AKHIR/PENGUJIAN_1/snort_pengujian1/alert_full
file_fast=/media/reyridrif4/TUGAS_AKHIR/PENGUJIAN_1/snort_pengujian1/alert_fast
file_csv=/media/reyridrif4/TUGAS_AKHIR/PENGUJIAN_1/snort_pengujian1/alert.csv
#daftar fungsi
pattern () {
    kata=$1
    echo "ATTACK keyword $1  : "$(grep -o $1 $file | wc -w)
}

patterninfo () {
    kata=$1
    echo "ATTACK keyword $1  : "$(grep -o $1 $file | wc -w)
}


priority () {
    kata=$1
    echo "ATTACK keyword $1  : "$(grep -o $1 $file | wc -w)
}
totalalert(){

    kata=$1
    x=2
    alertall=$(grep -o $1 $file | wc -w)
    hasil=$((alertall/x))
    echo "TOTAL ALERT FULL  $1 : "$hasil
}
alertsid(){
    kata=$1
    echo "ALERT sid num: $1       : "$(grep -o $1 $file_fast | wc -l)
}

totalalertline() {
    kata=$1
    x=2
    alertall=$(grep -o $1 $file_fast | wc -l)
    hasil=$((alertall/x))
    echo "TOTAL ALERT  $1 : "$hasil
}

totalalertfast(){
   echo "TOTAL ALERT FAST   :"$(wc -l $file_fast)
}

totalalertcsv(){
   echo "TOTAL ALERT CSV    :"$(wc -l $file_csv)
}

line(){
    echo "==================="
}
#main
echo ""
echo ""
echo "OUTPUT LOGGER SHELL"
echo "TUGAS AKHIR M. RIDWAN ZALBINA"
line
tanggal="Tue Jan 26 02:05:34 GMT-7 2016"
#echo "Waktu & Tanggal   : "$(date)
echo "Waktu & Tangal 	  : "$tanggal
snortvers='2.9.2 (Build 121), PCRE v. 8.30'
apachevers='2.2'
phpvers='5.5'

echo "Snort Version     : "$snortvers
echo "Apache Version    : "$apachevers
echo "MySQL Version     : "$phpvers

if [ -s $file ] && [ -s $file_fast ]
then


    line
    echo "ALERT_FULL"
    line
    totalalert '[**]'
    line
    pattern 'XSS'
    pattern 'SQL'
    pattern 'BAD-TRAFFIC'
    pattern 'WEB-PHP'
    patterninfo 'INFO'
    pattern 'ICMP'
    pattern 'GET'
    pattern 'POST'
    pattern 'SQLi'
    pattern 'HTTP_ATTACK'
    line
    echo "ALERT_FAST | CSV"
    totalalertfast
    totalalertcsv
    line
    alertsid '20000001'
    alertsid '2000002'
    alertsid '2000003'
    alertsid '2000004'
    alertsid '2000005'
    alertsid '2000006'
    alertsid '2000007'
    alertsid '2000008'
    alertsid '2000009'
    alertsid '2000010'
    alertsid '2000011'
    alertsid '2000012'
    alertsid '2000013'
    alertsid '2000014'
    alertsid '2000015'
    alertsid '2000016'
    alertsid '2000017'
    alertsid '2000018'
    alertsid '2000019'
    alertsid '2000020'
    alertsid '2000021'
    alertsid '2000022'
    alertsid '2000023'
    alertsid '2000024'
    alertsid '2000025'
    alertsid '2000026'
    alertsid '2000027'    
    
else
    echo "file alert kosong"

fi  

echo ""
