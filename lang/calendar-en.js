/*
 *
 * Copyright (c) 2004-2005 by Zapatec, Inc.
 * http://www.zapatec.com
 * 1700 MLK Way, Berkeley, California,
 * 94709, U.S.A.
 * All rights reserved.
 *
 *
 */

Zapatec.Calendar._DN=new Array
("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday");Zapatec.Calendar._SDN=new Array
("Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun");Zapatec.Calendar._FD=0;Zapatec.Calendar._MN=new Array
("January","February","March","April","May","June","July","August","September","October","November","December");Zapatec.Calendar._SMN=new Array
("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");Zapatec.Calendar._TT_en=Zapatec.Calendar._TT={};Zapatec.Calendar._TT["INFO"]="About the calendar";Zapatec.Calendar._TT["ABOUT"]="DHTML Date/Time Selector\n"+"(c) zapatec.com 2002-2007\n"+"For latest version visit: http://www.zapatec.com/\n"+"\n\n"+"Date selection:\n"+"- Use the \xab, \xbb buttons to select year\n"+"- Use the "+String.fromCharCode(0x2039)+", "+String.fromCharCode(0x203a)+" buttons to select month\n"+"- Hold mouse button on any of the above buttons for faster selection.";Zapatec.Calendar._TT["ABOUT_TIME"]="\n\n"+"Time selection:\n"+"- Click on any of the time parts to increase it\n"+"- or Shift-click to decrease it\n"+"- or click and drag for faster selection.";Zapatec.Calendar._TT["PREV_YEAR"]="Prev. year (hold for menu)";Zapatec.Calendar._TT["PREV_MONTH"]="Prev. month (hold for menu)";Zapatec.Calendar._TT["GO_TODAY"]="Go Today (hold for history)";Zapatec.Calendar._TT["NEXT_MONTH"]="Next month (hold for menu)";Zapatec.Calendar._TT["NEXT_YEAR"]="Next year (hold for menu)";Zapatec.Calendar._TT["SEL_DATE"]="Select date";Zapatec.Calendar._TT["DRAG_TO_MOVE"]="Drag to move";Zapatec.Calendar._TT["PART_TODAY"]=" (today)";Zapatec.Calendar._TT["DAY_FIRST"]="Display %s first";Zapatec.Calendar._TT["WEEKEND"]="0,6";Zapatec.Calendar._TT["CLOSE"]="Close";Zapatec.Calendar._TT["TODAY"]="Today";Zapatec.Calendar._TT["TIME_PART"]="(Shift-)Click or drag to change value";Zapatec.Calendar._TT["DEF_DATE_FORMAT"]="%Y-%m-%d";Zapatec.Calendar._TT["TT_DATE_FORMAT"]="%a, %b %e";Zapatec.Calendar._TT["WK"]="wk";Zapatec.Calendar._TT["TIME"]="Time:";Zapatec.Calendar._TT["E_RANGE"]="Outside the range";Zapatec.Calendar._TT._AMPM={am:"am",pm:"pm"};if(Zapatec.Calendar._DN)Zapatec.Calendar._TT._DN=Zapatec.Calendar._DN;if(Zapatec.Calendar._SDN)Zapatec.Calendar._TT._SDN=Zapatec.Calendar._SDN;if(Zapatec.Calendar._SDN_len)Zapatec.Calendar._TT._SDN_len=Zapatec.Calendar._SDN_len;if(Zapatec.Calendar._MN)Zapatec.Calendar._TT._MN=Zapatec.Calendar._MN;if(Zapatec.Calendar._SMN)Zapatec.Calendar._TT._SMN=Zapatec.Calendar._SMN;if(Zapatec.Calendar._SMN_len)Zapatec.Calendar._TT._SMN_len=Zapatec.Calendar._SMN_len;Zapatec.Calendar._DN=Zapatec.Calendar._SDN=Zapatec.Calendar._SDN_len=Zapatec.Calendar._MN=Zapatec.Calendar._SMN=Zapatec.Calendar._SMN_len=null