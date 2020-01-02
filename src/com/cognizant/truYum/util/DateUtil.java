package com.cognizant.truYum.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static Date convertToDate(String date) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            format.setLenient(false);
            return format.parse(date);// string to date
        } catch (ParseException e) {
            System.out.println("Date Format Went Wrong");

        }
        return null;// never executed
    }
}
