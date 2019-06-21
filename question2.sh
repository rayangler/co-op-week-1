for file in `ls *.txt`
do
  mv $file new_$file
done

for file in `ls *.bak`
do
  rm $file
done

for file in `ls *.py`
do
  lines=`wc -l < $file`
  if [ $lines -lt 10 ]
  then
    mv $file short_$file
  else
    mv $file long_$file
  fi
done
