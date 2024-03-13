Tomorow/ next day	SYSDATE + 1
Seven days from now	SYSDATE + 7
One hour from now	SYSDATE + 1/24
Three hours from now	SYSDATE + 3/24
An half hour from now	SYSDATE + ½*24
10 minutes from now	SYSDATE + 10/24*60
30 seconds from now	SYSDATE + 30/24*60*60
Tomorrow at 12 midnight	TRUNC(SYSDATE + 1)
Tomorrow at 8 AM	TRUNC(SYSDATE + 1) + 8/24
Next Monday at 12:00 noon	NEXT_DAY(TRUNC(SYSDATE), 'MONDAY') + 12/24
First day of next month at 12 midnight	TRUNC(LAST_DAY(SYSDATE ) + 1)
First day of the current month (OR) Beginning of Current Month	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-1))) + 1
The next Monday, Wednesday or Friday at 9 a.m	TRUNC(LEAST(NEXT_DAY(sysdate,''MONDAY'' ),NEXT_DAY(sysdate,''WEDNESDAY''), NEXT_DAY(sysdate,''FRIDAY'' ))) + (9/24)

Today	trunc(sysdate)
Today + 7 days	trunc(sysdate + 7)
Today - 7 days	trunc(sysdate - 7)
Today + 14 days	trunc(sysdate + 14)
Today - 14 days	trunc(sysdate - 14)
Today + 21 days	trunc(sysdate + 21)
Today - 21 days	trunc(sysdate - 21)
Today + 35 days	trunc(sysdate + 35)
Today - 35 days	trunc(sysdate - 35)
Today + 42 days	trunc(sysdate + 42)
Today - 42 days	trunc(sysdate - 42)
Today + 49 days	trunc(sysdate + 49)
Today - 49 days	trunc(sysdate - 49)
Yesterday	trunc(sysdate - 1)

Current Month - 1	TRUNC(ADD_MONTHS(SYSDATE,-1))
Current Month - 2	TRUNC(ADD_MONTHS(SYSDATE,-2))
Current Month - 3	TRUNC(ADD_MONTHS(SYSDATE,-3))
Current Month - 4	TRUNC(ADD_MONTHS(SYSDATE,-4))
Current Month - 5	TRUNC(ADD_MONTHS(SYSDATE,-5))
Current Month - 6	TRUNC(ADD_MONTHS(SYSDATE,-6))
Current Month - 7	TRUNC(ADD_MONTHS(SYSDATE,-7))
Current Month - 8	TRUNC(ADD_MONTHS(SYSDATE,-8))
Current Month - 9	TRUNC(ADD_MONTHS(SYSDATE,-9))
Current Month - 10	TRUNC(ADD_MONTHS(SYSDATE,-10))
Current Month - 11	TRUNC(ADD_MONTHS(SYSDATE,-11))
Current Month - 12	TRUNC(ADD_MONTHS(SYSDATE,-12))
Current Month + 1	TRUNC(ADD_MONTHS(SYSDATE,1))
Current Month + 2	TRUNC(ADD_MONTHS(SYSDATE,2))
Current Month + 3	TRUNC(ADD_MONTHS(SYSDATE,3))
Current Month + 4	TRUNC(ADD_MONTHS(SYSDATE,4))
Current Month + 5	TRUNC(ADD_MONTHS(SYSDATE,5))
Current Month + 6	TRUNC(ADD_MONTHS(SYSDATE,6))
Current Month + 7	TRUNC(ADD_MONTHS(SYSDATE,7))
Current Month + 8	TRUNC(ADD_MONTHS(SYSDATE,8))
Current Month + 9	TRUNC(ADD_MONTHS(SYSDATE,9))
Current Month + 10	TRUNC(ADD_MONTHS(SYSDATE,10))
Current Month + 11	TRUNC(ADD_MONTHS(SYSDATE,11))
Current Month + 12	TRUNC(ADD_MONTHS(SYSDATE,12))

Beginning of Current Month ( First day of the Month)	TO_DATE(TO_CHAR(SYSDATE,'MM')  || '/01/' || TO_CHAR(SYSDATE,'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 1 ( First day of the Last Month)	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-1),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-1),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 2 ( First day of 2 months ago)	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-2),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-2),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 3	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-3),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-3),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 4	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-4),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-4),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 5	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-5),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-5),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 6	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-6),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-6),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 7	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-7),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-7),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 8	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-8),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-8),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 9	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-9),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-9),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 10	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-10),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-10),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 11	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-11),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-11),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 12	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-12),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month - 13 ( First day of Month 1 year before).	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,-13),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,-13),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 1	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,1),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,1),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 2	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,2),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,2),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 3	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,3),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,3),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 4	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,4),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,4),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 5	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,5),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,5),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 6	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,6),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,6),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 7	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,7),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,7),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 8	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,8),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,8),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 9	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,9),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,9),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 10	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,10),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,10),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 11	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,11),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,11),'YYYY'),'MM/DD/YYYY')
Beginning of Current Month + 12	TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE,12),'MM') || '/01/' || TO_CHAR(ADD_MONTHS(SYSDATE,12),'YYYY'),'MM/DD/YYYY')

End of Current Month ( last day of Month)	TRUNC(LAST_DAY(SYSDATE))
End of Current Month - 1 ( Last day of Previous Month)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-1)))
End of Current Month - 2	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-2)))
End of Current Month - 3	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-3)))
End of Current Month - 4	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-4)))
End of Current Month - 5	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-5)))
End of Current Month - 6	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-6)))
End of Current Month - 7	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-7)))
End of Current Month - 8	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-8)))
End of Current Month - 9	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-9)))
End of Current Month - 10	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-10)))
End of Current Month - 11	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-11)))
End of Current Month - 12	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-12)))
End of Current Month - 13 ( last day of the month a year before)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-13)))
End of Current Month + 1	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,1)))
End of Current Month + 2	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,2)))
End of Current Month + 3	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,3)))
End of Current Month + 4	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,4)))
End of Current Month + 5	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,5)))
End of Current Month + 6	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,6)))
End of Current Month + 7	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,7)))
End of Current Month + 8	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,8)))
End of Current Month + 9	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,9)))
End of Current Month + 10	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,10)))
End of Current Month + 11	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,11)))
End of Current Month + 12	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,12)))

Beginning of Current Qtr	trunc(to_date(decode(to_char(sysdate,'Q'),1,'01/01/'||to_char(sysdate,'YYYY'),  2,'04/01/'||to_char(sysdate,'YYYY'),3,'07/01/'||to_char(sysdate,'YYYY'),  4,'10/01/'||to_char(sysdate,'YYYY')),'mm/dd/yyyy'))
Beginning of Current Qtr - 1	"trunc(to_date(decode(to_char((add_months(sysdate,-3)),'Q'),1,'01/01/'||to_char((add_months(sysdate,-3)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,-3)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,-3)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,-3)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr - 2	"trunc(to_date(decode(to_char((add_months(sysdate,-6)),'Q'),1,'01/01/'||to_char((add_months(sysdate,-6)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,-6)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,-6)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,-6)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr - 3	"trunc(to_date(decode(to_char((add_months(sysdate,-9)),'Q'),1,'01/01/'||to_char((add_months(sysdate,-9)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,-9)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,-9)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,-9)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr - 4	"trunc(to_date(decode(to_char((add_months(sysdate,-12)),'Q'),1,'01/01/'||to_char((add_months(sysdate,-12)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,-12)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,-12)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,-12)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr + 1	"trunc(to_date(decode(to_char((add_months(sysdate,3)),'Q'),1,'01/01/'||to_char((add_months(sysdate,3)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,3)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,3)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,3)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr + 2	"trunc(to_date(decode(to_char((add_months(sysdate,6)),'Q'),1,'01/01/'||to_char((add_months(sysdate,6)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,6)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,6)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,6)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr + 3	"trunc(to_date(decode(to_char((add_months(sysdate,9)),'Q'),1,'01/01/'||to_char((add_months(sysdate,9)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,9)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,9)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,9)),'YYYY')),'mm/dd/yyyy'))"
Beginning of Current Qtr + 4	"trunc(to_date(decode(to_char((add_months(sysdate,12)),'Q'),1,'01/01/'||to_char((add_months(sysdate,12)),'YYYY'),  2,'04/01/'||to_char((add_months(sysdate,12)),'YYYY'),
3,'07/01/'||to_char((add_months(sysdate,12)),'YYYY'),  4,'10/01/'||to_char((add_months(sysdate,12)),'YYYY')),'mm/dd/yyyy'))"
End of Current Qtr	trunc(to_date(decode(to_char(sysdate,'Q'),1,'03/31/'||to_char(sysdate,'YYYY'),  2,'06/30/'||to_char(sysdate,'YYYY'),3,'09/30/'||to_char(sysdate,'YYYY'),  4,'12/31/'||to_char(sysdate,'YYYY')),'mm/dd/yyyy'))
End of Current Qtr - 1	trunc(to_date(decode(to_char((add_months(sysdate,-3)),'Q'),1,'03/31/'||to_char((add_months(sysdate,-3)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,-3)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,-3)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,-3)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr - 2	trunc(to_date(decode(to_char((add_months(sysdate,-6)),'Q'),1,'03/31/'||to_char((add_months(sysdate,-6)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,-6)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,-6)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,-6)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr - 3	trunc(to_date(decode(to_char((add_months(sysdate,-9)),'Q'),1,'03/31/'||to_char((add_months(sysdate,-9)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,-9)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,-9)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,-9)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr - 4	trunc(to_date(decode(to_char((add_months(sysdate,-12)),'Q'),1,'03/31/'||to_char((add_months(sysdate,-12)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,-12)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,-12)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,-12)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr + 1	trunc(to_date(decode(to_char((add_months(sysdate,3)),'Q'),1,'03/31/'||to_char((add_months(sysdate,3)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,3)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,3)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,3)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr + 2	trunc(to_date(decode(to_char((add_months(sysdate,6)),'Q'),1,'03/31/'||to_char((add_months(sysdate,6)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,6)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,6)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,6)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr + 3	trunc(to_date(decode(to_char((add_months(sysdate,9)),'Q'),1,'03/31/'||to_char((add_months(sysdate,9)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,9)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,9)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,9)),'YYYY')),'mm/dd/yyyy'))
End of Current Qtr + 4	trunc(to_date(decode(to_char((add_months(sysdate,12)),'Q'),1,'03/31/'||to_char((add_months(sysdate,12)),'YYYY'),  2,'06/30/'||to_char((add_months(sysdate,12)),'YYYY'),  3,'09/30/'||to_char((add_months(sysdate,12)),'YYYY'),  4,'12/31/'||to_char((add_months(sysdate,12)),'YYYY')),'mm/dd/yyyy'))
Beginning of Current Year ( First day of the year)	TO_DATE('01/01/' || TO_CHAR(SYSDATE,'YYYY'),'MM/DD/YYYY')
Beginning of Current Year - 1	TO_DATE('01/01/'||TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY'),'MM/DD/YYYY')
Beginning of Current Year - 2	TO_DATE('01/01/'||TO_CHAR(ADD_MONTHS(SYSDATE,-24),'YYYY'),'MM/DD/YYYY')
Beginning of Current Year - 3	TO_DATE('01/01/'||TO_CHAR(ADD_MONTHS(SYSDATE,-36),'YYYY'),'MM/DD/YYYY')
End of Current Year ( last day of the year)	TO_DATE('12/31/' || TO_CHAR(SYSDATE,'YYYY'),'MM/DD/YYYY')
End of Current Year - 1	TO_DATE('12/31/'||TO_CHAR(ADD_MONTHS(SYSDATE,-12),'YYYY'),'MM/DD/YYYY')
End of Current Year - 2	TO_DATE('12/31/'||TO_CHAR(ADD_MONTHS(SYSDATE,-24),'YYYY'),'MM/DD/YYYY')
End of Current Year - 3	TO_DATE('12/31/'||TO_CHAR(ADD_MONTHS(SYSDATE,-36),'YYYY'),'MM/DD/YYYY')

Number of days left in a month	
"SELECT SYSDATE,
       LAST_DAY (SYSDATE) ""Last"",
       LAST_DAY (SYSDATE) - SYSDATE ""Days left""
  FROM DUAL;"
  
Number of days between 2 dates	SELECT TRUNC(sysdate) - TRUNC(e.hire_date) FROM employees;
Find the nearest Saturday after Current date?	select next_day(sysdate,'Saturday') from dual;
Display your Age in Months	select months_between(sysdate,to_date('30-jul-1990')) from dual;
Display your Age in Days?	select sysdate-to_date('30-jul-1990') from dual;
Display the date three months before the Current date?	select Add_months(sysdate,-3) from dual;

Current Month - 1	TRUNC(ADD_MONTHS(SYSDATE,-1))
Current Month + 1	TRUNC(ADD_MONTHS(SYSDATE,+1))
Beginning of Current Month	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-1)))+1  from dual;
Beginning of Current Month – 1 Month( Beginning of Last Month)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-2)))+1
Beginning of Current Month + 1 Month ( Beginning of Next Month)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,1)))+1  
End of Current Month	TRUNC(LAST_DAY(SYSDATE))
End of Current Month – 1 Month ( End of Previous Month)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,-1)))
End of Current Month + 1 Month ( End of Next Month)	TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE,1)))

Display the list of employees who have joined the company before 30 th june 90 or after 31 st dec 90	
select * from emp where hiredate between '30-jun-1990' and '31-dec-1990';
Write a query to display all dates from Jan, 2017 to till now?	
"(
    SELECT  ROWNUM, TO_DATE('01-JAN-2017','DD-MON-YYYY') + ROWNUM -1 AS dates
    FROM all_objects
    WHERE ROWNUM <= TO_DATE('30-APR-2017','DD-MON-YYYY') -
                    TO_DATE('01-JAN-2017','DD-MON-YYYY') + 1
)"
Write a query to display only friday dates from Jan, 2017 to till now?	
"SELECT a.dates, TO_CHAR(a.dates, 'fmDAY')
FROM
(
    SELECT  ROWNUM, TO_DATE(:1_START_DATE,'DD-MON-YYYY') + ROWNUM -1 AS dates
    FROM all_objects
    WHERE ROWNUM <= TO_DATE(:2_END_DATE,'DD-MON-YYYY') -
                    TO_DATE(:1_START_DATE,'DD-MON-YYYY') + 1
)a 
WHERE TO_CHAR(a.dates, 'fmDAY') = UPPER('FRIDAY')"
Display all Tuesday's in a Month	
"SELECT TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'fmDAY') AS ""DAY"",
TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'DD-MON-YYYY') AS ""DATE""
FROm DUAL
WHERE TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'fmDAY') = UPPER('TUESDAY')
CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1)), 'DD')
"
Display only 3rd Tuesday's in a Month	
"SELECT TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'fmDAY') AS ""DAY"",
TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'DD-MON-YYYY') AS ""DATE""
FROm DUAL
WHERE TO_CHAR(LAST_DAY(ADD_MONTHS(SYSDATE,-1))+LEVEL, 'fmDAY') = UPPER('TUESDAY')
AND LEVEL>=14
CONNECT BY LEVEL <= 21"
