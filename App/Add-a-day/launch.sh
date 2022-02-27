#!/bin/sh
echo $0 $*
time=$(cat time.txt);

#checking if year is leap
leap_year () {
  leap=0
  if [ `expr $1 % 400` -eq 0 ]
  then
    leap=1
  elif [ `expr $1 % 100` -eq 0 ]
  then
    leap=0
  elif [ `expr $1 % 4` -eq 0 ]
  then
    leap=1
  else
    leap=0
  fi
  return $leap
}

#taking parameters
year=$(echo $time | cut -d '-' -f 1)
month=$(echo $time | cut -d '-' -f 2)
day=$(echo $time | cut -d '-' -f 3 | cut -d ' ' -f 1)

#converting strings into integers removing the leading zero
year=$(($year))
if [ $month -eq "08" ] || [ $month -eq "09" ]
then
  month=${month#0}
else
  month=$(($month))
fi
if [ $day -eq "08" ] || [ $day -eq "09" ]
then
  day=${day#0}
else
  day=$(($day))
fi

#checking if year is leap
leap_year $year
leap=$?

#adding a day
day=$(( $day+1 ))

#checking date compatibility
if [ $day -gt 28 ]
then
  if [ $month -eq 2 ]
  then
    if [ $leap -eq 0 ]
    then
      month=3
      day=1
    fi
  fi
fi
if [ $day -gt 29 ]
then
  if [ $month -eq 2 ]
  then
    if [ $leap -eq 1 ]
    then
      month=3
      day=1
    fi
  fi
fi
if [ $day -gt 30 ]
then
  if [ $month -eq 4 ] || [ $month -eq 6 ] || [ $month -eq 9 ] || [ $month -eq 11 ]
  then
    month=$(( $month+1 ))
    day=1
  fi
fi
if [ $day -gt 31 ]
then
  month=$(( $month+1 ))
  day=1
  if [ $month -gt 12 ]
  then
    month=1
    day=1
    year=$(( year+1 ))
  fi
fi

#adding 0s to day and month
if [ $day -lt 10 ]
then
  day="0"$day
fi
if [ $month -lt 10 ]
then
  month="0"$month
fi

#writing date to file
echo $year"-"$month"-"$day "00:00:00" > time.txt
#changing system date
date -s "$year-$month-$day 00:00:00"

./printstr "New date is $year-$month-$day";
