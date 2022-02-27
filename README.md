# MiyooMini-emuRTC
Set of utilities to emulate Real Time Clock on the Miyoo Mini console.

<img src="https://user-images.githubusercontent.com/44671856/155880081-8705af0b-5165-43b0-ba52-df9ced2b84a8.png" width=40% height=40%>

## What is this?
The Miyoo Mini console does not have an RTC, which makes it a problem to play games like Pokemon Emerald/Sapphire/Ruby where there are time-based events, such as:
- berries
- random encounters
- mirage island
- lottery

Also, some hack roms like Pokemon Unbound have additional time-based events, such as:
- day/night system
- encounters based on seasons/time of the day
- areas of the map accessible only after a certain period of time
- and so on

## So what this tool is for?
This tool consists of 4 applications:
- Midnight
- Sunrise
- Sunset
- Add-a-day

The first 3 are used for changing the time. When you turn on the console, the time is automatically set to 1970-01-01 00:00:00.

- Midnight sets the time to 00:00:00
- Sunrise sets the time to 06:00:00
- Sunset sets the time to 18:00:00
- High_Noon (integrated in OnionOS) sets the time to 12:00:00

The main application is Add-a-day, which sets the date to 2022-01-01 00:00:00 the first time it is started. After that, it will add a day to the date every time it is started, making time-based events in pokemon games for GBA possible. For example, the second time it will set the date to January 2, then January 3, and so on. Also, you will always be able to change the time as many times as you want.

## I don't understand, what the heck are you talking about?
Ok let's see an example real quick:

Pokemon Unbound is one of the best hack rom ever published. It allows you to see the date of the last save from the save screen. If you try to save the game normally, when you go to save again you will see that the last save always has the same date, that is 2070-01-01, because the game does not support the years 19XX and therefore recognizes 1970 as 2070. This breaks the game and time-based events because every time you play the game the date will be locked to 2070-01-01.

<img src="https://user-images.githubusercontent.com/44671856/155880160-896d51be-bdf5-41af-aebe-7a11f2f72598.png" width=40% height=40%>

Every time you boot up your Miyoo Mini, you have to start Add-a-day to set the current date.
This is **extremely important**! If you forget to set the date before playing and then save the game, the date will be reset 
to 2070-01-01 and when you then start Add-a-day and play the game it will warn you that a problem has been detected with RTC 
and therefore all time-based events will stop working until 2070-01-01.

When you start Add-a-day, the new date is shown:

<img src="https://user-images.githubusercontent.com/44671856/155880534-5249e0e2-a1bf-41f7-85f8-c869debd9f40.png" width=40% height=40%>

Now you can play your favorite hack roms and all time-based events will work! Just remember to start Add-a-day every time you turn on your console!

<img src="https://user-images.githubusercontent.com/44671856/155880590-b6b24a1a-1d4f-443f-b947-4de6742a2b1d.png" width=40% height=40%>

## Installation
- Make sure you are running OnionOS.
- Copy and paste the App folder into the root of your SD card.




