@isTest
public with sharing class TestVerifyDate {
     //First Test - 
    @isTest static void testCheckDate() {
        // if date2 is within the next 30 days of date1, use date2. Otherwise use the end of the month
        Date date1 = Date.today();
        Date date2 = date1.addDays(15);
        Date checkDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, checkDate, 'If date2 is within the next thirty days then date1 uses date2');
        date2 = date1.addDays(45);
        Date checkDate2 = VerifyDate.CheckDates(date1,date2);
        Date endOfMonth = VerifyDate.SetEndOfMonthDate(date1);
        System.assertEquals(endOfMonth, checkDate2, 'If date2 is within the next 30 days of date1, use date2.  Otherwise use the end of the month');
    }
    @isTest static void testDateWithin30Days(){
       Date date1 = Date.today();
       Date date2 = date1.addDays(30);
       Date date30Days = date1.addDays(30);
       System.assertEquals(false, VerifyDate.DateWithin30Days(date1, date2), 'DateWithin30Days returns false when date2 is within the next 30 days of date1');
      // Verify that a date within 30 days is considered within range
    System.assertEquals(true, VerifyDate.DateWithin30Days(date1, dateWithin30Days), 'DateWithin30Days should return true when date2 is within 30 days of date1');
     
    }

    }

