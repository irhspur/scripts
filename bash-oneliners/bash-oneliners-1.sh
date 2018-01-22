

/data/_dasScrub/elh/dump/elementHealth_nov14_dump/stage1/elementHealth/onealLayout_HR/eligibility/onealLayout_HR_eligibility_input.txt


find . -regex ".*eligibility.*part.*" -type f -exec cat {} \; | awk -F"|" '{if($12=="1973-12-26") print $3 ":" $7 ":" $9 ":" $82 ":" $117 ":" $115}'


 awk -F"|" '{a=substr($50,0,4)} {if(a="2013" || a="2014") count++} END{print count}' biometric/part-000* | sort | uniq -c | sort -nr
  941  awk -F"|" '{a=substr($50,0,4)} {if(a="2013" || a="2014") count++} END{print a}' biometric/part-000* | sort | uniq -c | sort -nr
  942  awk -F"|" '{a=substr($50,0,4)} {if(a="2013" || a="2014") print a}' biometric/part-000* | sort | uniq -c | sort -nr
  943  awk -F"|" '{if(substr($50,0,4)=="2013" || substr($50,0,4)=="2014") print substr($50,0,4)}' biometric/part-000* | sort | uniq -c |sort -nr
  944  awk -F"|" '{if(substr($50,0,4)=="2013" || substr($50,0,4)=="2014") print $2":"substr($50,0,4)}' biometric/part-000* | sort | uniq -c |sort -nr
  945  awk -F"|" '{if(substr($50,0,4)=="2013" || substr($50,0,4)=="2014") print $2":"substr($50,0,4) count++} END{count}' biometric/part-000* | sort | uniq -c |sort -nr
  946  awk -F"|" '{if(substr($50,0,4)=="2013" || substr($50,0,4)=="2014") print $2":"substr($50,0,4)}' biometric/part-000* | sort | uniq -c |sort -nr
  952  awk -F"|" 'END{print $106}' biometric/part-000* | sort | uniq -c | sort -nr
  953  awk -F"|" '{print $106}' biometric/part-000* | sort | uniq -c | sort -nr
  954  awk -F"|" '{print substr($106,73,5)}' biometric/part-000* | sort | uniq -c | sort -nr
  955  awk -F"|" '{print substr($106,73,1)}' biometric/part-000* | sort | uniq -c | sort -nr
  956  awk -F"|" '{if(substr($106,73,1)==1) print $0}' biometric/part-000* | sort | uniq -c | sort -nr
  960  awk -F"|" '{if(substr($106,73,1)==1) print substr($50,0,4)}' biometric/part-000* | sort | uniq -c | sort -nr
  961  awk -F"|" '{if(substr($106,73,1)==1) print $0}' biometric/part-000* | sort | uniq -c | sort -nr



 1968  awk -F"|" '{substr($7,5,1)}' | sed s/\-/\/ change.csv > output.csv
 1969  awk -F"|" '{substr($7, | sed s/\-/\/p change.csvs
 1970  awk -F"|" '{substr($7,5,1)}' | sed s/\-/\//p change.csv
 1971  awk -F"|" '{substr($7,5,1)}' | sed s/\-/\// change.csv
 1972  awk -F"|" '{substr($7,5,1)}' | sed s/\-/\/ change.csv
 1973  awk -F"|" '{substr($7,5,1)}' | sed s/\-/g change.csv
 1974  awk -F"|" '{substr($7,5,1)}' | sed s/\-/g/ change.csv
 1975  awk -F"|" '{substr($7,5,1)}' | sed s/\-/// change.csv
 1976  awk -F"|" '{substr($7,5,1)}' | sed s/\-//\/ change.csv
 1977  awk -F"|" '{substr($7,5,1)}' | sed s/\-/\// change.csv
 1978  awk -F"|" '{substr($7,5,1)}' | sed s|-|/| change.csv
 1979  awk -F"|" '{substr($7,5,1)}' | sed 's|-|/|' change.csv
 1980  awk -F"|" '{substr($7,5,1)}{substr($7,8,1)}'' | sed 's|-|/|' change.csv > this.csv
 1981  awk -F"|" '{substr($7,5,1)}{substr($7,8,1)}' | sed 's|-|/|' change.csv > this.csv
 1982  awk -F"|" '{substr($7,8,1)}' | sed 's|-|/|' change.csv > this.csv
 1983  awk -F"|" '{substr($7,8,1)}' | sed 's|-|/|' this.csv > this.csv
 1984  awk -F"|" '{substr($7,8,1)}' | sed 's|-|/|' change.csv > this.csv

------------Find scripts ----------------------------------------------------


 .find . -type f -regex ".*stage1.*elig.*" -exec cat {} \; | awk -F"|" '{if($12=="2008-06-09") print $7 "*" $3 ":" $12 ":" $45 ":" $46 ":" $31}' |uniq | sort

 sudo sh runCommanHadoop.sh "find -L /var/log/hadoop/logs/userlogs/job_201510060543* -regex \".*stdout\" -exec cat {} \;"

------------Find scripts end----------------------------------------------------

-------------makalu to ; delimited and then awk-----------------------------------
- sed 's_\^%~_;_g;s_\^\*~_\n_g' Osha.csv | awk -F";" '{print $24}' | sort | uniq -
----------------------------------------------------------------------------------

R5GHECTJTDEEFBCQ

^%~ (Field)
^*~ (Line)

---------- Replace a string in filename ------------------------------------------------
- find . -depth -name '*foo*' -execdir bash -c 'mv -i "$1" "${1//foo/bar}"' bash {} \; -
----------------------------------------------------------------------------------------

-------------------------Sum W/O Exponent----------------------
- awk -F"|" '{sum=sum+$138} END{printf "%.2f", sum}' part-00* -
---------------------------------------------------------------

------ Awk custom field and record separator ----------------------
- awk 'BEGIN{FS="\\^%~"; RS="\\^\\*~"} {print NF}' deleteThis.txt -
-------------------------------------------------------------------

------ Oneline Bash for loop --------------------------------------------
- for i in $( ls | awk '{print $0}' ); do echo "Welcome $i times"; done -
-------------------------------------------------------------------------

------ clear hadoop tmp with for loop -----------------------------------------------------------------------
- for i in $(hadoop fs -ls /data/tmp/hadoop-hdfs | awk '{if($6!="2016-08-15") print $8}'); do echo $i; done -
-------------------------------------------------------------------------------------------------------------

------ Add row to all pharmacy file in oneline using action_csv.sh----------------------------------------------
for i in $(find /home/rsbajracharya/gitProjects/DasScrub3/src/test/resources/scrub/integra/client/ -regex ".*pharmacy_input.csv"); do ./action_csv.sh --path $i --action ADD --action-params 55,1 --type PHARMACY; done
----------------------------------------------------------------------------------------------------------------


for i in $( sudo s3cmd ls s3://dasscrubinput/BEN/PA/stage0/ben/newGroups/eligibility/ --recursive | awk -F\/ '{if(!($NF=="")) print $NF}' | sed -e 's_.csv__g' -e 's_ __g' -e 's_.xlsx__g' ); do awk -v var="$i" -F ";" '{if($1~var) print $0}' loopTest.txt;done


-- Maven ---

mvn

mvn archetype:generate

mvn clean compile exec:java -Dexec.mainClass=com.mongodb.App -e -X


-- Hadoop --

hadoop dfsadmin -report

hadoop dfsadmin -safemode leave