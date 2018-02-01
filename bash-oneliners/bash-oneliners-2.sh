//---- grep - Deleting lines from one file which are in another file------
awk '{print substr($1, 3, length($1)-3)}' ku_ne_lex.out
awk -F \" '{print substr($3, 2, length($3)-2)}' txt.done.data
grep -w -f cor ku_ne_lex.out > lexicon.out
//------------------------------------------------------------------------

//---- Display log in terminal as well as write to a file ----------------
sudo command -option | tee log
//------------------------------------------------------------------------

//---- Rename multiple files at once -------------------------------------
for i in $(ls); do mv $i 'arctic_1202000'$i; done
//------------------------------------------------------------------------

//---- Print line number and sentence number for txt.done.data -----------
ls | awk '{print NR, substr($0, 14, 4)}'
//------------------------------------------------------------------------

//---- Rename files by decreasing the numbering in the file name by one ---------------------
for i in $(ls); do num=${i:14:3}; num1=$(($num-1)); mv $i "arctic_1202000"$num1".wav"; done;
//-------------------------------------------------------------------------------------------

//---- Word Count -----------------------------------------------------------------------------------------------------------------------
awk -F"\"" '{print $2}' etc/txt.done.data | awk '{for (i=1;i<=NF;i++) a[$i]++} END {for(k in a) print a[k], k}' | sort -nr | uniq | head
//---------------------------------------------------------------------------------------------------------------------------------------

//---- move files less than a number ----------------------------------------------------------------------
for i in $(ls 900-1296); do num=${i:0:4}; if [ $num -lt 1145 ]; then mv 900-1296/$i corrected/ ; fi; done;
-----------------------------------------------------------------------------------------------------------

//---- sort du output by size -----
du -sh * | sort -h
//---------------------------------

//---- for libre calc -----------------------------------------------------------------------------------
ls */*.wav | awk -F"/" '{print $2}' | sort -n | awk '{print NR+904 ";" $1}' | xclip -selection clipboard
---------------------------------------------------------------------------------------------------------

//---- find key word in all files in a folder with filename ---
$find . -name "*.py" -exec grep -H "speakText" {} \;
---------------------------------------------------------------

//---- print from terminal -------------------------
lp -d Canon-MF210-Series -n 1 ~/Downloads/file.pdf 
----------------------------------------------------

//---- Display duplicate screens on external display --
xrandr --output VGA-1 --auto --same-as DP-1
-------------------------------------------------------

//---- Generate number of features ---------------------------------------------------------------------------------
-- From festival folder of voice directory --
for i in $(ls feats/); do num_lines=$(cat feats/$i | wc -l ); echo $i" "$num_lines >> ../logs/feat_count.log; done;
awk '{print $2 " " $1}' ../logs/feat_count.log | uniq | sort -nr | grep -v "_"
--------------------------------------------------------------------------------------------------------------------

#---- Calculating total duration of all audio files in a folder ---------------------------------------------------
tot=0; while read -r i; do tmp=0;  tmp=`ffprobe "$i" -show_format 2>/dev/null | grep "^duration" | cut -d '=' -f 2 | cut -d '.' -f 1`; if [ -n "$tmp" ]; then let tot+=$tmp; fi;    done < <(find . -type f -iname "*[.mp3,.wav]"); echo "Total duration: $(($tot/60)) minutes"
#------------------------------------------------------------------------------------------------------------------

